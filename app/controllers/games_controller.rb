class GamesController < ApplicationController

  def index
    @games = Game.all

    if current_user
      redirect_to "users#new"
    end
  end

  def new
    @game = Game.new
    @user = current_user
  end

  def create
    @game = Game.new(game_params)
    raise 'hit'
    if @game.save
      redirect_to 'users#show', notice: "You have added a game."
    else
      flash[:nope]
    end
  end

  def show
    @game = Game.find(params[:id])
  end

  private

  def game_params
    params.require(:game).permit(:title, :quantity, :system, :condition)
  end
end
