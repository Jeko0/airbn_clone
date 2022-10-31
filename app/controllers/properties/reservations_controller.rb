# frozen_string_literal: true

module Properties
  class ReservationsController < ApplicationController
    before_action :authenticate_user!

    def new
      @property      =  Property.find(params[:property_id])
      @reservation   =  @property.reservations.new
      @checkin_date  =  reservation_params[:checkin_date]
      @checkout_date =  reservation_params[:checkout_date]
      @nightly_total =  reservation_params[:nightly_total]
      @cleaning_fee  =  reservation_params[:cleaning_fee]
      @service_fee   =  reservation_params[:service_fee]
      @total_cost    =  reservation_params[:total_cost]
    end

    private

    def reservation_params
      params.permit(:checkin_date, :checkout_date, :nightly_total,
                    :cleaning_fee, :service_fee, :total_cost)
    end
  end
end
