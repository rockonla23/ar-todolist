class Todolist < ActiveRecord::Base
  has_many :task
end
