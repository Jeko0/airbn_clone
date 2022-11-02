require 'rails_helper'

RSpec.describe Payment, type: :model do
  context "Associations" do
    it { should belong_to(:reservation) } 
  end

  context "money_rails" do
    it { is_expected.to monetize(:nightly_total_cents).allow_nil }
    it { is_expected.to monetize(:cleaning_fee_cents).allow_nil }
    it { is_expected.to monetize(:service_fee_cents).allow_nil }
    it { is_expected.to monetize(:total_cost_cents).allow_nil }
  end
end
