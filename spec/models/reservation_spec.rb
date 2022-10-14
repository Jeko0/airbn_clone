require 'rails_helper'

RSpec.describe Reservation, type: :model do
  context "Validations" do
    it { should validate_presence_of(:reservation_date) }
  end
  
  context "Associations" do
    it { should belong_to(:property) } 
    it { should belong_to(:user) } 
  end
end
