class AddTrackIdToRequirement < ActiveRecord::Migration
  def change
    add_column :requirements, :reqtrackid, :string
  end
end
