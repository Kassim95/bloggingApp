class CreateFollowingsTable < ActiveRecord::Migration
  def change
     create_table :followings do |t|
      t.belongs_to    :user
      t.string      :username         
    end
    add_index :followings, :user_id
  end
end