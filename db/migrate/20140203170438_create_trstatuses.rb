class CreateTrstatuses < ActiveRecord::Migration
  def change
    create_table :trstatuses do |t|
      t.string :trstatusname

      t.timestamps
    end
  end

  def self.down
    drop table :trstatuses
  end
end
