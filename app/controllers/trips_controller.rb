class TripsController < ApplicationController
    def index
        @trips = Trip.all 
        render json: @trips
    end

    def create
        # we are doing .strptime b/c of how our datatype & how params sends the date back
        new_date = Date.strptime(params[:date], '%Y-%m-%d')
        new_price = Faker::Number.between(from: 200, to: 500)
        new_user = params[:user][:id]
        new_depart_planet = params[:depart_planet_id]
        new_arrival_planet = params[:arrival_planet_id]
        
        @trip = Trip.create(date: new_date, price: new_price, user: new_user, depart_planet_id: new_depart_planet, arrival_planet_id: new_arrival_planet)

        render json: @trip
    end

end
