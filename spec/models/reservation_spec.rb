require 'rails_helper'

RSpec.describe Reservation, type: :model do
  context "Associations" do
    it { should belong_to(:property) } 
    it { should belong_to(:user) } 
  end
end
