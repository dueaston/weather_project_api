class ProfileSController < ApplicationController
  before_action :set_profile, only: [:show, :update, :destroy]

  # GET /profile_s
  def index
    @profile_s = UserProfile.all
    render json: @profile_s
  end

  # GET /profile_s/1
  def show
    render json: @profile
  end

  # POST /profile_s
  def create
    @profile = UserProfile.new(profile_params)
    if @profile.save
      render json: @profile, status: :created
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /profile_s/1
  def update
    if @profile.update(profile_params)
      render json: @profile
    else
      render json: @profile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /profile_s/1
  def destroy
    @profile.destroy
    head :no_content
  end

  private

  def set_profile
    @profile = UserProfile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:name, :bio, :email)
  end
end


