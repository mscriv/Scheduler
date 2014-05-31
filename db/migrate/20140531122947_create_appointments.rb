class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.references :patient, index: true
      t.string :date
      t.string :time
      t.datetime :end_time

      t.timestamps
    end
  end
end
