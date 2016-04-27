class CreatePostsTable < ActiveRecord::Migration
  def change
  	create_table :posts do |t|
  		t.integer		:user_id
  		t.string    :username
  		t.string		:body
  		t.string		:title
  		t.datetime 	:date_created
  	end
  end
end
