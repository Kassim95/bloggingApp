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
      t.integer   :user_id
      t.string    :username
      t.string    :body
      t.string    :title
      t.datetime  :date_created
      t.belongs_to  :user
    end
  end
end

class CreateFollowersTable < ActiveRecord::Migration
  def change
    create_table :followers do |t|
      t.integer     :user_id
      t.string      :username
      t.integer     :profile_id
      t.belongs_to  :user
    end
  end
end

class CreateFollowingsTable < ActiveRecord::Migration
  def change
    create_table :followings do |t|
      t.integer     :user_id
      t.string      :username
      t.belongs_to  :user
    end
  end
end