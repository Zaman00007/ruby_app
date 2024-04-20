class CreatePatientRegistrations < ActiveRecord::Migration[7.1]
  def change
    create_table :patient_registrations do |t|
      t.date :date
      t.integer :registrations

      t.timestamps
    end
  end
end
