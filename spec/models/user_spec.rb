require 'rails_helper'

RSpec.describe User, type: :model do
  context "Associations" do
    it { should have_one(:profile).dependent(:destroy) } 
    it { should have_many(:favorites).dependent(:destroy) } 
    it { should have_many(:favorited_properties).through(:favorites).source(:property) } 
  end
end
