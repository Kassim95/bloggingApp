class CreateFollowingsTable < ActiveRecord::Migration
  def change
  	create_table :followings do |t|
  		t.integer 		:user_id
  		t.string			:username
  	end
  end
end