class CreateRanks < ActiveRecord::Migration
  def self.up
    create_table :ranks do |t|
      t.string :name
      t.integer :points

      t.timestamps
    end
  end

  def self.down
    drop_table :ranks
  end
end
