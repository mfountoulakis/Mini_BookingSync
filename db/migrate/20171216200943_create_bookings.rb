class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.datetime :start
      t.datetime :end
      t.string :client_email
      t.float :price
      t.references :rental, foreign_key: true

      t.timestamps
    end
  end
end
