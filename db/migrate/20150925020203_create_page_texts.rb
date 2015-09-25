class CreatePageTexts < ActiveRecord::Migration
  def change
    create_table :page_texts do |t|
      t.string :title
      t.text :body
      t.references :page, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
