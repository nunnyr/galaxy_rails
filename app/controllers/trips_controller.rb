class TripsController < ApplicationController
    def index
        @trips = Trip.all 
        render json: @trips
    end

    def create
    
        
        new_date = params[:date]
        new_price = 0
        new_user_id = params[:user][:id]
        new_depart_planet = params[:depart_planet_id]
        new_arrival_planet = params[:arrival_planet_id]
        @trip = Trip.create!(date: new_date, price: new_price, user_id: new_user_id, depart_planet_id: new_depart_planet, arrival_planet_id:new_arrival_planet)

        
        render json: @trip
    end


end
