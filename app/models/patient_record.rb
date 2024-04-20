# patient_record.rb
class PatientRecord < ApplicationRecord
  # Associations
  has_one :patient_registration_log, dependent: :destroy

  # Callbacks
  # after_create :increment_registration_count

  

  

  # Method to increment the registration count for the current day
  def increment_registration_count
  # Find the registration log for today's date, or build a new one if not found
  patient_registration_log = PatientRegistrationLog.where(date: Date.today).first
  log = patient_registration_log || PatientRegistrationLog.new(date: Date.today)


  # Update its registrations count
  log.registrations ||= 0
  log.registrations += 1

  # Save the record
  log.save
end
end
