require "rails_helper"

RSpec.describe "Host::Payments", type: :request do 
  let(:user) { create(:user, role: "host") }
  let(:property) { create(:property) }
  let(:reservations) { create(:reservation, 3, property: property) }
  let(:payments) do 
    reservations.map do |reservation| 
      create(:payment, reservation: reservation)
    end
  end

  before { sign_in user }

  context "GET index" do
    before { get host_payments_path }
    it { expect(response).to have_http_status(:ok) }
  end
end