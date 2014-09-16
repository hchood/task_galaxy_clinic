class TaskList < ActiveRecord::Base
  has_many :tasks, dependent: :destroy
  has_many :user_task_lists, dependent: :destroy
  has_many :users, through: :user_task_lists

  validates :name, presence: true
end
