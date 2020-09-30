class TripsController < ApplicationController
    def index
        @trips = Trip.all 
        render json: @trips
    end

    def create
        byebug


        @trip = Trip.create(trip_params)
        render json: @trip
    end

end
