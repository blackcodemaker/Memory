class CreateUserSettings < ActiveRecord::Migration
  def change
    create_table :user_settings do |t|
      t.integer :spaced_time_interval_minutes
      t.belongs_to :user

      t.timestamps
    end
  end
end
