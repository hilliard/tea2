class CreateTcsubsystems < ActiveRecord::Migration
  def change
    create_table :tcsubsystems do |t|
      t.string :tcsubsystemname

      t.timestamps
    end
  end

  def self.down
    drop_table :tcsubsystems
  end
end
