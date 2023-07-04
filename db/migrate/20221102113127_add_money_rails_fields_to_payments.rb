class AddMoneyRailsFieldsToPayments < ActiveRecord::Migration[7.0]
  def change
    add_monetize :payments, :nightly_total, amount: { null: true, default: nil }, currency: { null: true, default: nil }
    add_monetize :payments, :cleaning_fee, amount: { null: true, default: nil }, currency: { null: true, default: nil }
    add_monetize :payments, :service_fee, amount: { null: true, default: nil }, currency: { null: true, default: nil }
    add_monetize :payments, :total_cost, amount: { null: true, default: nil }, currency: { null: true, default: nil }
  end
end
