class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.integer :trainer_id
      t.integer :user_id
      t.string :trainer_location
      t.string :trainer_name
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
