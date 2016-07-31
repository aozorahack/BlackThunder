class CreateOriginalTexts < ActiveRecord::Migration[5.0]
  def change
    create_table :original_texts do |t|
      t.integer :card_id
      t.string :book_title
      t.string :book_publisher
      t.string :book_publish_year

      t.timestamps
    end
  end
end
