class CreateDesignTemplates < ActiveRecord::Migration
  def change
    create_table :design_templates do |t|
      t.string :name
      t.string :image

      t.timestamps null: false
    end
  end
end
