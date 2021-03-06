class AppointmentsController < ApplicationController

    def index
        @appointments = Appointment.all

        render json: @appointments

        ########################

        # @appointments = Appointment.where(user_id: 1)
        # @appointments = @appointments.map{|item| item.trainer}

        # render json: @appointments
    end

    def show 
        @appointment = Appointment.find(params[:id])

        render json: @appointment
    end

    def create
        # byebug
        @appointment = Appointment.create(trainer_id: params[:trainer_id], trainer_name: params[:trainer_name], trainer_location: params[:location], date: params[:date], user_id: params[:user_id])

        render json: @appointment
    end

    def destroy
        # byebug

        @appointment = Appointment.destroy(params[:id])

        render json: @appointment
        
    end

    def update

      

        @appointment = Appointment.find(params[:id])

        @appointment.update(id: params[:id], date: params[:date], user_id: params[:user_id])

        render json: @appointment
    end

end
