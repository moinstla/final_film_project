class AddPdfToShoot < ActiveRecord::Migration[5.1]
  def self.up
    change_table :shoots do |t|
      t.attachment :pdf
    end
  end

  def self.down
    drop_attached_file :shoots, :pdf
  end
end
