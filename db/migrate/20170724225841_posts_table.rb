class PostsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
    t.string :name
    t.string :title
    t.integer :content
  end
  end
end
