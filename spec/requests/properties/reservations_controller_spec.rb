require 'rails_helper'

RSpec.describe 'Properties::Reservations', type: :request do
  let(:property) { create(:property) }
  let(:user) { create(:user) }

  before { sign_in user }
    
  context "GET new" do
    before { get new_property_reservation_path(property), 
      params: { 
        checkin_date: "11/05/2022", 
        checkout_date: "11/09/2022" 
      } 
    }
  end
end
