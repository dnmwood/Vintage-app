class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
    @game.save
  end

  def create
    @game = Game.new(game_params)

    if game.save
      redirect_to 'games#index', notice: "You have added a game."
    end
  end

  def show
    @game = Game.find(params[:id])
  end

  private

  def game_params
    params.require(:games).permit(:title, :quantity)
  end
end
