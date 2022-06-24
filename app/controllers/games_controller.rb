class GamesController < ApplicationController
    def index
        games = Game.all

        render inertia: 'Home', props: {
            games: games.as_json
        }
    end

    def show
        game = Game.find(params[:id])
        render inertia: 'Games/Show', props: {
            game: game.as_json(only: %i[id title genre platform])
        }
    end

    def create
        Game.create(
            title: Faker::Game.title,
            genre: Faker::Game.genre,
            platform: Faker::Game.platform
        )
        redirect_to root_url
    end

    def destroy
        game = Game.find(params[:id])
        game.destroy
        redirect_to root_url
    end

    def wishlist
        render inertia: 'Games/Wishlist', props: {}
    end
end
