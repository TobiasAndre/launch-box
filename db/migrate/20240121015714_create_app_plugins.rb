class CreateAppPlugins < ActiveRecord::Migration[7.1]
  def change
    create_table :app_plugins do |t|
      t.references :app, null: false, foreign_key: true
      t.references :plugin, null: false, foreign_key: true
      t.string :service_name, null: false
      t.timestamps
    end
  end
end
