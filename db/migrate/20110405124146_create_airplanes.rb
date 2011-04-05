class CreateAirplanes < ActiveRecord::Migration
  def self.up
    create_table :airplanes do |t|
      t.string :name
      t.integer :max_passengers

      t.timestamps
    end
  end

  def self.down
    drop_table :airplanes
  end
end
