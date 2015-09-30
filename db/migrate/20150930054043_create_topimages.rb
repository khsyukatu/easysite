class CreateTopimages < ActiveRecord::Migration
  def change
    create_table :topimages do |t|
      t.string :image
      t.string :title
      t.string :head_text
      t.references :site, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
