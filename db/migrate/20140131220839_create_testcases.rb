class CreateTestcases < ActiveRecord::Migration
  def change
    create_table :testcases do |t|
      t.string :tctitle
      t.text :tcdescription
      t.text :tcprecondition
      t.string :tcdata
      t.string :tcexpectedresults
      t.string :tcsubsystem
      t.string :tcstatus
      t.text :tcpostcondition
      t.string :tcauthor
      t.boolean :tcactive
      t.string :tcreqreference
      t.string :tcmodifiedby
      t.date :tcexecdate
      t.datetime :tcstarttime
      t.datetime :tcstoptime
      t.string :tcstep

      t.timestamps
    end
  end

  def self.down
    drop_table  :testcases
  end

end
