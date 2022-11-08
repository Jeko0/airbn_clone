module Host 
  class PropertiesController < ApplicationController 
    before_action :authenticate_user! 

    def new
      authorize current_user, policy_class: HostPolicy
      @property = Property.new(user: current_user)
    end

    def create 
      authorize current_user, policy_class: HostPolicy
      @property = current_user.properties.new(property_params)

      if @property.save 
        redirect_to host_dashboard_path 
      else
        render :new
      end
    end 

    private 

    def property_params
      params.require(:property).permit(:name, :description, :headline, :address_1, :address_2, :city, :state, :zip_code, :country_code)
    end
  end
end