class CreateTestruns < ActiveRecord::Migration
  def change
    create_table :testruns do |t|
      t.string :trname
      t.text :trdescription
      t.string :trfeature
      t.string :tester
      t.string :testtype
      t.string :trstatus
      t.string :trpriority
      t.string :tros
      t.string :trbrowser
      t.string :trrisk
      t.time :trstart
      t.time :trstop
      t.datetime :trexecdate
      t.string :trrequirement
      t.string :trtrackid
      t.belongs_to :testcase, index: true

      t.timestamps
    end
  end

  def self.down
    drop table :testruns
  end
end
