class CreateWordsThirds < ActiveRecord::Migration[5.2]
  def change
    create_table :words_thirds do |t|
      t.string :word

      t.timestamps
    end
  end
end
