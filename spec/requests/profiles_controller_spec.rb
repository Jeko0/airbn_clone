require "rails_helper"

RSpec.describe "ProfilesController", type: :request do
  let(:user) { create(:user) }
  let(:profile) { user.profile }
  before { sign_in user }

  context "GET show" do
    before { get profile_path(profile) }
    it { expect(response).to have_http_status(:success) }
  end
end