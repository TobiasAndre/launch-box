class CreateBuildpacks < ActiveRecord::Migration[7.1]
  def change
    create_table :buildpacks do |t|
      t.string :name, null: false
      t.string :description
      t.string :url
      t.timestamps
    end
  end
end
