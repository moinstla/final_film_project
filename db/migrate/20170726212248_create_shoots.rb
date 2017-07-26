class CreateShoots < ActiveRecord::Migration[5.1]
  def change
    create_table :shoots do |t|
      t.string :name
      t.datetime :start_time

      t.timestamps
    end
  end
end
