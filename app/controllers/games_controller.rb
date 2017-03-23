class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
    @user = current_user
  end

  def update
    @user = current_user
    @games = @user.games
  end

  def create
    @user = current_user
    @game = Game.new(game_params)
    @game.user_id = current_user.id
    if @game.save
      redirect_to user_path(@user), notice: "You have added a game."
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
