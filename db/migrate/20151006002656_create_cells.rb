class CreateCells < ActiveRecord::Migration
  def change
    create_table :cells do |t|
      t.string :title
      t.string :body
      t.references :block, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
