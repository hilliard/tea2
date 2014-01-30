class CreateReqdevstatuses < ActiveRecord::Migration
  def change
    create_table :reqdevstatuses do |t|
      t.string :reqdevstatusname

      t.timestamps
    end
  end

  def self.down
    drop_table :reqdevstatuses
  end
end
