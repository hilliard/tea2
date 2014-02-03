class CreateTrsubsytems < ActiveRecord::Migration
  def change
    create_table :trsubsytems do |t|
      t.string :trsubname

      t.timestamps
    end
  end


  def self.down
    drop table :trsubsytems
  end
end
