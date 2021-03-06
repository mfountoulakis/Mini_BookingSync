class Api::V1::BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :update, :destroy]

  # GET /bookings
  def index
    if params[:rental_id].present? 
      @bookings = Booking.where(rental_id: params[:rental_id])
      render json: @bookings
    else
      @bookings = Booking.all
      render json: @bookings  
    end
  end

  # GET /bookings/1
  def show
    render json: @booking
  end

  # POST /bookings
  def create
    @booking = Booking.create(booking_params)

    if @booking.valid?
      render json: @booking
    else
      render json: @booking, status: 422, title: @booking.errors, adapter: :json_api, serializer: ActiveModel::Serializer::ErrorSerializer
    end
  end

  # PATCH/PUT /bookings/1
  def update
    if @booking.update(booking_params)
      render json: @booking
    else
      render json: @booking.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bookings/1
  def destroy
    @booking.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def booking_params
      ActiveModelSerializers::Deserialization.jsonapi_parse(params)
    end
end
