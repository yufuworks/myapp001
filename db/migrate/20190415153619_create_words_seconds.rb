class CreateWordsSeconds < ActiveRecord::Migration[5.2]
  def change
    create_table :words_seconds do |t|
      t.string :word

      t.timestamps
    end
  end
end
