class AddPatientRecordIdToPatientRegistrationLogs < ActiveRecord::Migration[6.0]
  def change
    add_reference :patient_registration_logs, :patient_record, foreign_key: true
  end
end
