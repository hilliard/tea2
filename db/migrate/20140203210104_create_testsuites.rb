class CreateTestsuites < ActiveRecord::Migration
  def change
    create_table :testsuites do |t|
      t.string :tsname
      t.text :tsdescription
      t.string :tsfeature
      t.string :tstester
      t.string :tstesttype
      t.string :tsstatus
      t.string :tspriority
      t.string :tsos
      t.string :tsbrowser
      t.string :tsrisk
      t.datetime :tsstart
      t.datetime :tsstop
      t.date :tsexecdate
      t.string :tsrequirement
      t.string :tstrackid
      t.belongs_to :testrun, index: true

      t.timestamps
    end
  end

  def self.down
    drop table :testsuites
  end
end
