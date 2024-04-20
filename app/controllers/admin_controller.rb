class AdminController < ApplicationController
    before_action :authenticate_admin!
    def index
        @registration_logs = PatientRegistrationLog.group(:date).order(date: :asc).count
    end
end