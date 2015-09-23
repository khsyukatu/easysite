class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.references :site, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
