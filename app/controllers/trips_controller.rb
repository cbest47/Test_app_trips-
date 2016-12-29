class TripsController < ApplicationController
  def index
    @trip = Trip.all
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.create(trip_params)
    if @trip.save
      redirect_to trip_path(@trip)
    else
      flash[:error] = @trip.errors.full_messages
      redirect_to new_trip_path
    end
  end

  private

  def trip_params
    params.require(:trip).permit(:name, :date, :city, :image)
  end


end
