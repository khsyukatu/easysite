class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.references :site, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
