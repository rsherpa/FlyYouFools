class CreateAirports < ActiveRecord::Migration
  def self.up
    create_table :airports do |t|
      t.string :iata
      t.string :stad

      t.timestamps
    end
  end

  def self.down
    drop_table :airports
  end
end
