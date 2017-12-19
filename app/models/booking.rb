class Booking < ApplicationRecord
  belongs_to :rental

  validates :start, presence: true
  validates :end, presence: true
  validates :client_email, presence: true
  validates :price, presence: true
end
