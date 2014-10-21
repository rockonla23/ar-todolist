require_relative 'config/application'
require 'date'

class TodoList

  def initialize
    begin
      self.send ARGV[0]
      #rescue help
    end
  end

  def list
    Task.list
  end

  def add
    Task.create(:task =>ARGV[1..-1].join(" "))
  end

  def delete
    Task.delete_task(ARGV[1].to_i)
  end

  def complete
    Task.complete(ARGV[1])
  end

  def uncomplete
    Task.uncomplete(ARGV[1])
  end


end


TodoList.new