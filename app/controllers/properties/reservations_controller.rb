# frozen_string_literal: true

module Properties
  class ReservationsController < ApplicationController
    before_action :authenticate_user!

    def new
      @property = Property.find(params[:property_id])
      @reservation = @property.reservations.new
    end

    private

    def reservation_params
      params.permit(:checkin_date, :checkout_date, :nigthly_total, 
                    :cleaning_fee, :service_fee, :total_cost)
    end
  end
end
