class UsersController < ApplicationController
  def index
    @users = user.all 
    render json: @users
  end
  
  def create
    @user = user.new(name: params[:name], email: params[:email])
    if @user.save
      render json:@user
    else
      render json: {error: "Unable tro create user."}
    end
  end
end
