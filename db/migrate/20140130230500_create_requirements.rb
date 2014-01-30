class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.string :reqtitle
      t.string :reqowner
      t.string :reqstatus
      t.string :reqpriority
      t.string :reqdifficulty
      t.string :reqdevstatus
      t.string :reqtestcoverage
      t.string :reqrelease

      t.timestamps
    end
  end

  def self.down
    drop_table :requirements
  end
end
