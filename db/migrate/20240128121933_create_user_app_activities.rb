class CreateUserAppActivities < ActiveRecord::Migration[7.1]
  def change
    create_table :user_app_activities do |t|
      t.references :app, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :action, null: false
      t.text :description
      t.timestamps
    end
  end
end
