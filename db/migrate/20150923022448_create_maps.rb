class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.text :body
      t.references :site, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
