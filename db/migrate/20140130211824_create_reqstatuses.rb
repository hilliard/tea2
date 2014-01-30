class CreateReqstatuses < ActiveRecord::Migration
  def change
    create_table :reqstatuses do |t|
      t.string :reqstatusname

      t.timestamps
    end
  end

  def self.down
    drop_table  :reqstatuses
  end

end
