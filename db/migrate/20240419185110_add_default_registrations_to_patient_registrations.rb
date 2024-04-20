class AddDefaultRegistrationsToPatientRegistrations < ActiveRecord::Migration[7.1]
  def change
    change_column_default :patient_registrations, :registrations, 0
  end
end
