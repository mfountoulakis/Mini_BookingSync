require 'test_helper'

class BookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @booking = bookings(:one)
  end

  test "should get index" do
    get bookings_url, as: :json
    assert_response :success
  end

  test "should create booking" do
    assert_difference('Booking.count') do
      post bookings_url, params: { booking: { client_email: @booking.client_email, end: @booking.end, price: @booking.price, rental_id: @booking.rental_id, start: @booking.start } }, as: :json
    end

    assert_response 201
  end

  test "should show booking" do
    get booking_url(@booking), as: :json
    assert_response :success
  end

  test "should update booking" do
    patch booking_url(@booking), params: { booking: { client_email: @booking.client_email, end: @booking.end, price: @booking.price, rental_id: @booking.rental_id, start: @booking.start } }, as: :json
    assert_response 200
  end

  test "should destroy booking" do
    assert_difference('Booking.count', -1) do
      delete booking_url(@booking), as: :json
    end

    assert_response 204
  end
end
