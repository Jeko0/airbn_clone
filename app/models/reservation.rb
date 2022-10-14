class Reservation < ApplicationRecord
  validates :reservation_date, presence: true
  
  belongs_to :property
  belongs_to :user

  scope :future_reservations, -> { where('reservation_date > ?', Date.today).order(:reservation_date)}
end
