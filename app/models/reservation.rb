class Reservation < ApplicationRecord
  validates :reservation_date, presence: true
  
  belongs_to :property
  belongs_to :user
end
