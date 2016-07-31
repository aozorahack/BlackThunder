class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.integer :original_text_id
      t.integer :page_no
      t.string :original_image_url
      t.text :text_working

      t.timestamps
    end
  end
end
