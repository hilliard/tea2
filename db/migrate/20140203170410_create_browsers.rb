class CreateBrowsers < ActiveRecord::Migration
  def change
    create_table :browsers do |t|
      t.string :brname

      t.timestamps
    end
  end

  def self.down
    drop table :browsers
  end
end
