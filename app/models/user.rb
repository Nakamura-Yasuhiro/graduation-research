class User < ApplicationRecord
  has_secure_password

  validates :name, {presence: true}
  validates :email, {presence: true, uniqueness: true}
  validates :comment, {presence: true, length: {maximum: 23}}
  def posts
    return Post.where(user_id: self.id)
  end
end

