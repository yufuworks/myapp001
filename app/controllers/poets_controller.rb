class PoetsController < ApplicationController
  include CarrierwaveBase64Uploader

  before_action :move_to_index, except: [:index, :show]


  def index
    @poets = Poet.includes(:user).page(params[:page]).per(5).order("created_at DESC")
  end

  def new
  end

  def create
    Poet.create(image: poet_params[:image], user_id: current_user.id)
  end

  def destroy
    poet = Poet.find(params[:id])
    poet.destroy if poet.user_id == current_user.id
  end

  def edit
    @poet = Poet.find(params[:id])
  end

  def update
    poet = Poet.find(params[:id])
    if poet.user_id == current_user.id
      poet.update(poet_params)
    end
  end

  def show
    @poet = Poet.find(params[:id])
    @comments = @poet.comments.includes(:user)
  end



  private
  def poet_params
    params.require(:poet).permit(:image, :image_cache)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
