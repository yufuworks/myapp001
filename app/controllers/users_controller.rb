class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = current_user.nickname
    @poets = user.poets.page(params[:page]).per(5).order("created_at DESC")
  end
end
