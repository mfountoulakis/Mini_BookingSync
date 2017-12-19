class RentalSerializer < ActiveModel::Serializer
  attributes :id, :name, :daily_rate
  has_many :bookings, serializer: BookingSerializer
end
