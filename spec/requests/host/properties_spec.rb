require "rails_helper" 

RSpec.describe "Host::Properties", type: :request do 
  let(:user) { create(:user, role: "host") }
  let(:property) { create(:property, user: user) }

  before { sign_in user }

  context "GET new" do
    before { get new_host_property_path }
    it { expect(response).to be_successful }
  end

  describe "POST create" do
    context "valid params" do
      it { expect { post host_properties_path, params: { property: {   
        name: "name", 
        headline: "headline", 
        description: "desc", 
        address_1: "address2",
        address_2: "address3", 
        city: "new alabama",
        state: "original alabama", 
        zip_code: "21236", 
        country_code: "US" }} }.to change { Property.count }.by(1) 
      }
    end

    context "invalid params" do
      it { expect { post host_properties_path, params: { property: { name: "name" }} }.not_to change { Property.count } }
    end
  end
end  