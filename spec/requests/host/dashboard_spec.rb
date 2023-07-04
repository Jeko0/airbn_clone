require "rails_helper"

RSpec.describe "Host::Dashboard", type: :request do 
  let(:user) { create(:user, role: "host") }

  before { sign_in user }

  context "GET index with valid user" do
    before { get host_dashboard_path  }

    it { expect(response).to have_http_status(:success) }
  end

  context "GET index with invalid user" do
    before { user.update! role: nil }
    it { expect { get host_dashboard_path }.to raise_exception(Pundit::NotAuthorizedError)}
  end
end