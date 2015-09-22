class CreateSiteTemplates < ActiveRecord::Migration
  def change
    create_table :site_templates do |t|
      t.references :site, index: true, foreign_key: true
      t.references :design_template, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
