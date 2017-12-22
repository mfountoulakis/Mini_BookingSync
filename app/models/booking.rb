class Booking < ApplicationRecord
  belongs_to :rental

  validates :client_email, presence: true
  validates :start, presence: true
  validates :end, presence: true
  
end
