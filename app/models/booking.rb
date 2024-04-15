class Booking < ApplicationRecord
  belongs_to :traveller
  belongs_to :experience
end
