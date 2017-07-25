class CreateCommentsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :comments_tables do |t|
      t.column :name, :string
      t.column :content, :string
    end
  end
end
