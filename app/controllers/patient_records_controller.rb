class PatientRecordsController < ApplicationController
  before_action :set_patient_record, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /patient_records or /patient_records.json
  def index
    @patient_records = PatientRecord.all
  end

  # GET /patient_records/1 or /patient_records/1.json
  def show
  end

  # GET /patient_records/new
  def new
    @patient_record = PatientRecord.new
  end

  # GET /patient_records/1/edit
  def edit
  end

  # POST /patient_records or /patient_records.json
  def create
    @patient_record = PatientRecord.new(patient_record_params)
  
    respond_to do |format|
      if @patient_record.save
        # Call the increment_registration_count method after saving the patient record
        @patient_record.increment_registration_count
  
        format.html { redirect_to patient_record_url(@patient_record), notice: "Patient record was successfully created." }
        format.json { render :show, status: :created, location: @patient_record }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @patient_record.errors, status: :unprocessable_entity }
      end
    end
  
  
  end

  # PATCH/PUT /patient_records/1 or /patient_records/1.json
  def update
    respond_to do |format|
      if @patient_record.update(patient_record_params)
        format.html { redirect_to patient_record_url(@patient_record), notice: "Patient record was successfully updated." }
        format.json { render :show, status: :ok, location: @patient_record }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @patient_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_records/1 or /patient_records/1.json
  def destroy
    @patient_record.destroy!

    respond_to do |format|
      format.html { redirect_to patient_records_url, notice: "Patient record was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_record
      @patient_record = PatientRecord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def patient_record_params
      params.require(:patient_record).permit(:name, :age, :gender, :issue)
    end
end
