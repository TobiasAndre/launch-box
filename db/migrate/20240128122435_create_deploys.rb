class CreateDeploys < ActiveRecord::Migration[7.1]
  def change
    create_table :deploys do |t|
      t.text :output
      t.timestamps
    end
  end
end
