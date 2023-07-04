require 'rails_helper'

RSpec.describe Favorite, type: :model do
  context "Associations" do
    it { should belong_to(:user) } 
    it { should belong_to(:property) } 
  end
end
