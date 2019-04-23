class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    drop_table :appointments
    create_table :appointments do |t|
      t.references :teacher, foreign_key: true
      t.references :student, foreign_key: true
      t.datetime :meeting_time

      t.timestamps
    end
  end
end
