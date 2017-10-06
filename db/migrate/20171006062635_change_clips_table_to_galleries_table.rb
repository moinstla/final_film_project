class ChangeClipsTableToGalleriesTable < ActiveRecord::Migration[5.1]
  def change
    rename_table :clips, :galleries
  end
end
