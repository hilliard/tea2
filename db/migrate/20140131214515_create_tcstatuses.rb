class CreateTcstatuses < ActiveRecord::Migration
  def change
    create_table :tcstatuses do |t|
      t.string :tcstatusname

      t.timestamps
    end
  end

  def self.down
    drop_table :tcstatuses
  end
end
