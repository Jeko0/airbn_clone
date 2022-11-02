require 'rails_helper'

RSpec.describe Reservation, type: :model do
  context "Associations" do
    it { should belong_to(:property) } 
    it { should belong_to(:user) } 
    it { should have_one(:payment).dependent(:destroy) } 
  end

  context "Validations" do
    it { should validate_presence_of(:checkin_date) }
    it { should validate_presence_of(:checkout_date) }
  end
end 
