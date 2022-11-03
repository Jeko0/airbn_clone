class AccountsController < ApplicationController 
  before_action :authenticate_user!

  def show 
    @user = current_user
  end

  def update 
    @user = User.find(params[:id])
    @user.update(accoutn_params)
    redirect_to account_path(@user)
  end

  private

  def accoutn_params 
    params.require(:account).permit(:email)
  end
end