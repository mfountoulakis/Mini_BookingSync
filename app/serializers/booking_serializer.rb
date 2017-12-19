class BookingSerializer < ActiveModel::Serializer
  attributes :id, :start, :end, :client_email, :price
  belongs_to :rental, serializer: RentalSerializer
end
