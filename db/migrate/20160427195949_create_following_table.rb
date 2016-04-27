class CreateFollowingTable < ActiveRecord::Migration
  def change
  	create_table :following do |t|
  		t.integer 		:user_id
  		t.string			:username
  	end
  end
end
