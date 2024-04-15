class Experience < ApplicationRecord
  belongs_to :host
  has_many :bookings
  has_many :travellers, through: :bookings
end
