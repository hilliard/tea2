class CreateReqpriorities < ActiveRecord::Migration
  def change
    create_table :reqpriorities do |t|
      t.string :reqpriorityname

      t.timestamps
    end
  end

  def self.down
    drop_table :reqpriorities
  end

end
