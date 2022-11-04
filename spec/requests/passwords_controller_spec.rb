require "rails_helper"

RSpec.describe "Passwords", type: :request do 
  let(:user) { create(:user) }

  before { sign_in user }

  context "GET show" do
    before { get password_path(user) }
    it { expect(response).to have_http_status(:success) }
  end

  context "PUT update" do
    before{ put password_path(user), params: {  password: { password: "password1" } }
    user.reload
    }
    it { expect(user.valid_password?("password1")).to eq(true) }
  end
end