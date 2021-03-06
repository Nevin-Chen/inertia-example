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
        redirect_to request.referrer
    end

    def edit
        game = Game.find(params[:id])
        render inertia: 'Games/Edit', props: {
            game: game
        }
    end

    def update
        game = Game.find(params[:id])
        game.update(params.require(:game).permit!)
        redirect_to game_url(game)
    end

    def destroy
        game = Game.find(params[:id])
        current_page = params[:page]
        game.destroy
        redirect_to request.referrer
    end

    def wishlist
        render inertia: 'Games/Wishlist', props: {}
    end
end
