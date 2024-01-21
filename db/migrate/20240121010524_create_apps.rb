class CreateApps < ActiveRecord::Migration[7.1]
  def change
    create_table :apps do |t|
      t.string :uuid, null: false
      t.string :name, null: false
      t.string :description
      t.string :url
      t.string :deploy_type, null: false
      t.boolean :is_active, null: false, default: true
      t.boolean :is_locked, null: false, default: false
      t.timestamps
    end
  end
end
