class User < ApplicationRecord

  validates :first_name, presence: true

  has_many :user_roles
  has_many :roles, through: :user_roles

end
