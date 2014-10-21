require 'faker'
  20.times do
    Task.create(task: Faker::Lorem.sentence,
                started_at: rand(1.year).from_now,
                completed_at:rand(2.year).from_now)
  end