class GamesController < ApplicationController
    def index
        games = Game.all

        render inertia: 'Games/Index', props: {
            games: games.as_json(only: [:id, :title, :genre, :platform])
        }
    end
end
