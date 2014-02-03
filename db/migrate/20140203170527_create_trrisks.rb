class CreateTrrisks < ActiveRecord::Migration
  def change
    create_table :trrisks do |t|
      t.string :trrisk

      t.timestamps
    end
  end

  def self.down
    drop table :trrisk
  end
end
