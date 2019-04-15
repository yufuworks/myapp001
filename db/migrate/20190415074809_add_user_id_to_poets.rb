class AddUserIdToPoets < ActiveRecord::Migration[5.2]
  def change
    add_column :poets, :user_id, :integer
  end
end
