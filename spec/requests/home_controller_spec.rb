require "rails_helper"

RSpec.describe HomeController, type: :request do
  context "GET /index" do
    it "succeeds" do 
      get root_path 
      expect(response).to be_successful 
    end
  end
end
