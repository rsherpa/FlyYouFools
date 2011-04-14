class RemoveAirplane < ActiveRecord::Migration
  def self.up
    drop_table :airplanes
  end

  def self.down
    create_table :airplanes do |t|
      t.string :name
      t.integer :max_passengers

      t.timestamps
    end
  end
end
