class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string :stepname
      t.belongs_to :testcase, index: true

      t.timestamps
    end
  end

  def self.down
    drop_table :steps
  end
end
