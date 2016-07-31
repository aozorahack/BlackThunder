class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.integer :original_text_id
      t.string :original_image_url
      t.string :text_working

      t.timestamps
    end
  end
end
