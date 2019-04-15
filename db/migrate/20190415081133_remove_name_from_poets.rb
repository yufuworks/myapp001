class RemoveNameFromPoets < ActiveRecord::Migration[5.2]
  def change
    remove_column :poets, :name, :string
  end
end
