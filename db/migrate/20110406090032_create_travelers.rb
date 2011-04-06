class CreateTravelers < ActiveRecord::Migration
  def self.up
    create_table :travelers do |t|
      t.string :name
      t.integer :personal_number

      t.timestamps
    end
  end

  def self.down
    drop_table :travelers
  end
end
