class TripsController < ApplicationController
    def index
        @trips = Trip.all 
        render json: @trips
    end

    def create
        # we are doing .strptime b/c of how our datatype & how params sends the date back
        # new_date = Date.strptime(params[:date], '%Y-%m-%d')
        # new_price = Faker::Number.between(from: 200, to: 500)
        # new_user = params[:user]
        # # [:id]
        # new_depart_planet = params[:depart_planet_id]
        # new_arrival_planet = params[:arrival_planet_id]
        
        @trip = Trip.create(trip_params)
        # byebug
        render json: @trip
    end

    private
    def trip_params

        
        # new_date = Date.strptime(params[:date], '%Y-%m-%d') #helper method for date on frontend
        # new_price = Faker::Number.between(from: 200, to: 500) #helper method to update price. 

        new_date = params[:date]
        new_price = 0
        # byebug
        new_user_id = params[:user][:id]
        # [:id]
        new_depart_planet = params[:depart_planet_id]
        new_arrival_planet = params[:arrival_planet_id]

        testTrip = Trip.create!(date: new_date, price: new_price, user_id: new_user_id, depart_planet_id: new_depart_planet, arrival_planet_id:new_arrival_planet)

        byebug

        params.permit(:date, :price, :user, :depart_planet_id, :arrival_planet_id)

        
    end
end
