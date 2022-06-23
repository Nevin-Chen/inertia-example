class GamesController < ApplicationController
    def index
        games = Game.all

        render inertia: 'Home', props: {
            # games: games.as_json(only: %i[id title genre platform])
            games: games.map do |game|
                game.as_json(only: %i[id title genre platform]).merge(
                path: game_path(game))
            end
        }
    end

    def show
        game = Game.find(params[:id])
        render inertia: 'Games/Show', props: {
            game: game.as_json(only: %i[id title genre platform])
        }
    end

    def wishlist
        render inertia: 'Games/Wishlist', props: {}
    end
end
