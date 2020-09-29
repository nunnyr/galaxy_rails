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

    private
    def user_params
        params.permit(:pronouns, :first_name, :last_name, :age, :email, :friendly_neighbor)
    end

end
