require "rails_helper"

RSpec.describe "PropertiesController", type: :request do
  let(:property) { create(:property) }
  context "GET#show" do
    it "succeeds" do 
      get property_path(property)
      expect(response).to be_successful
    end
  end
end
