class Payment < ApplicationRecord
  belongs_to :reservation

  monetize :nightly_total_cents, allow_nil: true 
  monetize :cleaning_fee_cents, allow_nil: true 
  monetize :service_fee_cents, allow_nil: true 
  monetize :total_cost_cents, allow_nil: true 
end
