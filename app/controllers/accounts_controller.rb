class AccountsController < ApplicationController 
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :update]

  def show 
    authorize @user, policy_class: AccountPolicy
  end

  def update 
    authorize @user, policy_class: AccountPolicy
    @user.update(accoutn_params)
    redirect_to account_path(@user)
  end

  private

  def accoutn_params 
    params.require(:account).permit(:email)
  end
  
  def set_user 
    @user = User.find(params[:id])
  end
end