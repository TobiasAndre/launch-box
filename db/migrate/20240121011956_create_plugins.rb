class CreatePlugins < ActiveRecord::Migration[7.1]
  def change
    create_table :plugins do |t|
      t.string :name, null: false
      t.string :service_type, null: false
      t.timestamps
    end
  end
end
