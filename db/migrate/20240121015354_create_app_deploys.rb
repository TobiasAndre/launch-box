class CreateAppDeploys < ActiveRecord::Migration[7.1]
  def change
    create_table :app_deploys do |t|
      t.references :app, null: false, foreign_key: true
      t.timestamps
    end
  end
end
