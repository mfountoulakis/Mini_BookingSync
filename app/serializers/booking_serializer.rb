class BookingSerializer < ActiveModel::Serializer
  attributes :id, :start, :end, :client_email, :price
end
