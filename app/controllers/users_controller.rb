class UsersController < ApplicationController
  def index
    @users = user.all 
    render json: @users
  end
  
def show
  @user = user.find(params[:id])
  render json: @user
end

  def create
    @user = user.new(name: params[:name], email: params[:email])
    if @user.save
      render json:@user
    else
      render json: {error: "Unable tro create user."}
    end
  end

  def update
    @user = user.find(params[:id])
    if @user.update(name: params[:name], email: params[:ewmail])
      render json: @user
    else
      render json: {error: "Unable to update user."}
    end
  end

def destroy
  @user = user.find(params[:id])
  if @user.destroy
    render json: {message: "Successfully deleted user."}
  else
    render json: {error: "Unable to delete user."}
  end
  end
end
