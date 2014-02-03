class CreateOs < ActiveRecord::Migration
  def change
    create_table :os do |t|
      t.string :osname

      t.timestamps
    end
  end

  def self.down
    drop table :os
  end
end
