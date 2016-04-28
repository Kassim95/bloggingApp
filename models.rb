class User <ActiveRecord::Base
	has_many :posts
	has_many :followers
	has_many :followings
end

class Post <ActiveRecord::Base
	belongs_to :user
end

class Follower <ActiveRecord::Base
	belongs_to :user
	end

	class Following <ActiveRecord::Base
		belongs_to :user
	end