class CreateFollowersTable < ActiveRecord::Migration
  def change
    create_table :followers do |t|
    	belongs_to 		:user
    	t.string      :username
    	t.string    	:fname
      t.string    	:lname
      t.string    	:password
      t.string    	:email            
    end
    add_index :followers, :user_id
  end
end
