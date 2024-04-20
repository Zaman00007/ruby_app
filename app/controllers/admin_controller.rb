class AdminController < ApplicationController
    before_action :authenticate_admin!
    def index
      @registration_logs = PatientRegistrationLog.all
    end
  end
  