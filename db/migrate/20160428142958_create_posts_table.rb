class CreatePostsTable < ActiveRecord::Migration
  def change
    create_table :posts do |t|
    	t.belongs_to  :user
      t.string    :username
      t.string    :body
      t.string    :title
      t.datetime  :date_created
    end
    add_index :posts, :user_id
  end
end
