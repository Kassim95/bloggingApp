class CreateFollowersTable < ActiveRecord::Migration
  def change
  	create_table :followers do |t|
  		t.integer 		:user_id
  		t.string			:username
  		t.integer			:profile_id
  	end
  end
end
