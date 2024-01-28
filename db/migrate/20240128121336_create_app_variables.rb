class CreateAppVariables < ActiveRecord::Migration[7.1]
  def change
    create_table :app_variables do |t|
      t.references :app, null: false, foreign_key: true
      t.string :name, null: false
      t.string :value, null: false
      t.timestamps
    end
  end
end
