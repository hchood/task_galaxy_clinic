class User < ActiveRecord::Base
  has_many :tasks

  validates :email,
    presence: true,
    uniqueness: true
end
