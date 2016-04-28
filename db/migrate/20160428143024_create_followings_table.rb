class CreateFollowingsTable < ActiveRecord::Migration
  def change
     create_table :followings do |t|
    	belongs_to 		:user
    	t.string      :username
    	t.string    	:fname
      t.string    	:lname
      t.string    	:password
      t.string    	:email            
    end
    add_index :followings, :user_id
  end
end
