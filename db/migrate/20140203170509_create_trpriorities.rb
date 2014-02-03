class CreateTrpriorities < ActiveRecord::Migration
  def change
    create_table :trpriorities do |t|
      t.string :trpriorityname

      t.timestamps
    end
  end

  def self.down
    drop table :trpriorities
  end
end
