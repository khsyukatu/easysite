class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :page, index: true, foreign_key: true
      t.string :type
      t.string :title
      t.text :body
      t.text :movie
      t.string :image
      t.string :image_location

      t.timestamps null: false
    end
  end
end
