class Task < ActiveRecord::Base
  belongs_to :todolist

  def self.add_task(task)
    puts "You should complete the task or else.."
    Task.limit(task).last.task
  end

  def self.delete_task(task)
    puts "IT IS TERMINATED \"#{Task.limit(task).last.task}\" from your list...ASTA LA VISTA BABY"
    Task.limit(task).last.delete
  end

  def self.complete(id)
        Task.limit(id).last.update_attributes(:completed_at => Time.now)
  end

  def self.uncomplete(id)
    Task.limit(id).last.update_attributes(:completed_at => nil)
  end

  def self.list
    Task.all.each_with_index do |element, index|
      index += 1
      if element.completed_at
        puts "[x] #{"%02d" % index}: #{element.task}"
      else
        puts "[ ] #{"%02d" % index}: #{element.task}"
      end
  end
end
end