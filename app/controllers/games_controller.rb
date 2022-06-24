class GamesController < ApplicationController
    def index
    @pagy, @games = pagy(Game.all, items: 10)

        render inertia: 'Home', props: {
            games: @games,
            pagy: pagy_metadata(@pagy)
        }
    end

    def show
        game = Game.find(params[:id])
        render inertia: 'Games/Show', props: {
            game: game.as_json(only: %i[id title genre platform])
        }
    end

    def create
        GenerateGameJob.perform_later
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
