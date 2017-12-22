class RentalSerializer < ActiveModel::Serializer
  attributes :id, :name, :daily_rate, :created_at
  has_many :bookings, serializer: BookingSerializer
end
