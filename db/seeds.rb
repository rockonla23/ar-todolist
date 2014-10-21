require 'faker'
  20.times do
    Task.create(:task => Faker::Lorem.sentence)
    Task.create(:started_at => rand(1.year).from_now)
    Task.create(:completed_at => rand(2.year).from_now)
  end