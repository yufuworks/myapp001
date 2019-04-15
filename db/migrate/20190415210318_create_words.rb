class CreateWords < ActiveRecord::Migration[5.2]
  def change
    create_table :words do |t|
      t.integer :wordsfirst_id
      t.integer :wordssecond_id
      t.integer :wordsthird_id

      t.timestamps
    end
  end
end
