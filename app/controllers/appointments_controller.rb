class AppointmentsController < ApplicationController
  def index
    @patient = Patient.find(params[:patient_id])
  end
  
  def new
    @patient = Patient.find(params[:patient_id])
    @appointment = @patient.appointments.new
  end
  
  def create
     @patient = Patient.find(params[:patient_id])
    @appointment = @patient.appointments.new(appointment_params)
    if @appointment.save
      flash[:success] = "Added new appointment."
      redirect_to patient_appointments_path
    else
      flash[:error] = "There was a problem adding that appointment."
      render action: :new
    end
  end
  
  private
  def appointment_params
    params[:appointment].permit(:date, :time)
  end
end
