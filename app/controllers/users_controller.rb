class UsersController < ApplicationController

    def index
        @users = User.all 
        render json: @users
    end

    def create
        @user = User.create(user_params)
        render json: @user
        # if @user.valid?
        #     render json: @user, status: 201
        # else
        #     render json: {errors: @user.errors.full_messages}, status: 404
        # end
    end

    # def update
    # end

    def login
        @found_user = User.find_by(email: params[:theUserNameFromFrontEnd])
        @found_trip = @found_user.trips
        # byebug
        #sorry Eric we kept the same name
        if @found_user
            render json: {trips: @found_trip, user: @found_user}
        # else
        #     render json: {error: “no user with that name exists”}
        end

    end


    private
    def user_params
        params.permit(:pronouns, :first_name, :last_name, :age, :email, :friendly_neighbor)
    end

end
