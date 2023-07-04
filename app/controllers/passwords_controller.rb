class PasswordsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :update]
  
  def show 
    authorize @user, policy_class: PasswordPolicy
  end

  def update 
    authorize @user, policy_class: PasswordPolicy
    @user.update(password_params)
    bypass_sign_in(@user)
    redirect_to password_path(@user)
  end

  private 

  def password_params 
    params.require(:password).permit(:password)
  end

  def set_user 
    @user = User.find(params[:id])
  end
end