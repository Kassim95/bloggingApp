class CreateUsersTable < ActiveRecord::Migration
  def change
      create_table :users do |t|
      t.string    :username
      t.string    :fname
      t.string    :lname
      t.string    :password
      t.string    :email
    end
  end
end

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


class CreateFollowersTable < ActiveRecord::Migration
  def change
    create_table :followers do |t|
      belongs_to    :user
      t.string      :username
      t.string      :fname
      t.string      :lname
      t.string      :password
      t.string      :email            
    end
    add_index :followers, :user_id
  end
end

class CreateFollowingsTable < ActiveRecord::Migration
  def change
     create_table :followings do |t|
      belongs_to    :user
      t.string      :username
      t.string      :fname
      t.string      :lname
      t.string      :password
      t.string      :email            
    end
    add_index :followings, :user_id
  end
end
