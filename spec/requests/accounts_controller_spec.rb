require "rails_helper"

RSpec.describe "Accounts", type: :request do
  let(:user) { create(:user) }

  before { sign_in user }

  context "GET show" do
    before { get account_path(user) }
    it { expect(response).to have_http_status(:success) }
  end

  context "PUT update" do
    before{ put account_path(user), params: {  account: { email: "foo2@bar.com" } }
    user.reload
    }
    it { expect(user.email).to eq("foo2@bar.com") }
  end
end