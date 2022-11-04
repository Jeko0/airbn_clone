require 'rails_helper'

RSpec.describe "Hosts", type: :request do
  let(:user) { create(:user) }
  before { sign_in user }
  
  context "PUT update" do
    before { put hostify_path(user_id: user.id) }
    it { expect(user.reload.host?).to be(true) }
  end
end
