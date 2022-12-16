class UsersController < ApplicationController
    # Find a user in the database using the user id from the session hash
    def show
        user = User.find_by(session[:user_id])
        render json: user
    end
end
