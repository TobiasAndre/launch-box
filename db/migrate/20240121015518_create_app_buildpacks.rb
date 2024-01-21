class CreateAppBuildpacks < ActiveRecord::Migration[7.1]
  def change
    create_table :app_buildpacks do |t|
      t.references :buildpack, null: false, foreign_key: true
      t.integer :position, null: false, default: 0
      t.timestamps
    end
  end
end
