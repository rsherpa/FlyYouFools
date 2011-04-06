class CreateBookings < ActiveRecord::Migration
  def self.up
    create_table :bookings do |t|
      t.integer :flight_id
      t.string :name
      t.integer :personal_number
      t.string :mail
      t.string :phone_number

      t.timestamps
    end
  end

  def self.down
    drop_table :bookings
  end
end
