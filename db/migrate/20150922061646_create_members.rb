class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :image
      t.string :name
      t.text :description
      t.references :site, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
