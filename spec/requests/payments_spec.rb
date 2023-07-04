require 'rails_helper'

RSpec.describe "Payments", type: :request do
  let(:user) { create(:user) }
  let(:payments) { create_list(:payment, 3, user: user) }

  before { sign_in user }
  
  context "GET /index" do
    before { get payments_path }
    it { expect(response).to have_http_status(:success) }
  end
end
