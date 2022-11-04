class ProfilesController < ApplicationController 
  before_action :authenticate_user!
  before_action :set_profile, only: [:show, :update]
  
  def show 
    authorize @profile
  end

  def update 
    authorize @profile
    @profile.update(profile_params)
    redirect_to profile_path(@profile)
  end

  private 

  def profile_params 
    params.require(:profile).permit(:first_name, :last_name, :address_1, 
                                    :address_2, :city, :zip_code, :country_code)
  end

  def set_profile 
    @profile = Profile.find(params[:id])
  end
end