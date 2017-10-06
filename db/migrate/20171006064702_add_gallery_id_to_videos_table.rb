class AddGalleryIdToVideosTable < ActiveRecord::Migration[5.1]
  def change
    add_column :videos, :gallery_id, :integer
  end
end
