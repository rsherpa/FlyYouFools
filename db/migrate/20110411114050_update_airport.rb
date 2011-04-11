class UpdateAirport < ActiveRecord::Migration
  def self.up
    change_table :airports do |t|
      t.float :lat
      t.float :lng
      t.string :country
      t.string :state
      t.rename :stad, :city
    end
  end

  def self.down
    change_table :airports do |t|
      t.remove :lat
      t.remove :lng
      t.remove :country
      t.remove :state
      t.rename :city, :stad
    end
  end
end
