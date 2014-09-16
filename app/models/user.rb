class User < ActiveRecord::Base
  has_many :tasks
  has_many :user_task_lists, dependent: :destroy
  has_many :task_lists, through: :user_task_lists

  validates :email,
    presence: true,
    uniqueness: true
end
