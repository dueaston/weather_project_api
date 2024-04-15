class UsersController < ApplicationController
  before_action :authenticate_request, except: [:create]

  def index
    @users = user.all 
    render json: @users
  end
  
def show
  @user = User.find_by(id: params[:id])
  render json: @user, status: :ok
end

  def create
    @user = User.new(name: params[:name], email: params[:email])
    if @user.save
      render json:@user
    else
      render json: {error: "Unable tro create user."}
    end
  end

  def update
    @user = user.find(params[:id])
    if @user.update(name: params[:name], email: params[:email])
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
