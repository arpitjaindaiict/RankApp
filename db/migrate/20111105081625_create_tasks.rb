class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.integer :employee_id
      t.string :description
      t.date :startdate
      t.date :enddate
      t.integer :points

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
