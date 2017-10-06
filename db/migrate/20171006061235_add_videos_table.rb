class AddVideosTable < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :description

      t.timestamps
    end
  end
end
