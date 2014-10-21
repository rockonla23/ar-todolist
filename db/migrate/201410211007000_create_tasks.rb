class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :task
      t.date :started_at
      t.date :completed_at
      t.timestamps
    end
  end
end