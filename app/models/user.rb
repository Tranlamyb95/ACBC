class User < ApplicationRecord
	has_many :user_recipes
	has_many :recipes, :through => :user_recipes
        has_many :active_user_users, class_name:  "UserUser",
                                  foreign_key: "follower_id",
	has_many :passive_user_users, class_name:  "UserUser",
                                   foreign_key: "followed_id",
                                   dependent:   :destroy
	has_many :following, through: :active_user_users, source: :followed
	has_many :followers, through: :passive_user_users, source: :follower
  # Follows a user.
  def follow(other_user)
    active_relationships.create(followed_id: other_user.id)
  end

  # Unfollows a user.
  def unfollow(other_user)
    active_relationships.find_by(followed_id: other_user.id).destroy
  end

  # Returns true if the current user is following the other user.
  def following?(other_user)
    following.include?(other_user)
  end
end
