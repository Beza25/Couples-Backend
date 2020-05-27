class UsersController < ApplicationController

    def index 
        render json: User.all
    end

    def create
        new_user = User.create(name: params[:name], username: params[:username])
        rendr json: new_user
    end

    def update

        user = User.find(params[:user_id])
        updatedUser = user.update(name: params[:name], username: params[:username], gender: params[:gender], img: params[:img])
        
        render json: user

    end
end
