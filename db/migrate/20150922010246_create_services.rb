class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :title
      t.string :head_text
      t.string :image
      t.string :image_type
      t.references :site, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
