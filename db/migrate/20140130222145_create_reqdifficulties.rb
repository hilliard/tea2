class CreateReqdifficulties < ActiveRecord::Migration
  def change
    create_table :reqdifficulties do |t|
      t.string :reqdifficultyname

      t.timestamps
    end
  end

  def self.down
    drop_table :reqdifficulties
  end
end
