class GenerateGameJob < ApplicationJob
  queue_as :default

  def perform(*args)
    Game.create(
      title: Faker::Game.title,
      genre: Faker::Game.genre,
      platform: Faker::Game.platform
    )
    sleep 2
  end
end
