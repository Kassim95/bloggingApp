class CreateFollowersTable < ActiveRecord::Migration
  def change
    create_table :followers do |t|
      t.belongs_to    :user
      t.string      :username       
    end
    add_index :followers, :user_id
  end
end