class CreateTesttypes < ActiveRecord::Migration
  def change
    create_table :testtypes do |t|
      t.string :tname

      t.timestamps
    end
  end

  def self.down
    drop table :testtypes
  end
end
