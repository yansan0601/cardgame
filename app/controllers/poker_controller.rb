class PokerController < ApplicationController
  helper :application
  def index
  end
  def create
    @card = params[:card]
    if @card
      render :index
    else 
      redirect_to poker_index_path
    end
  end
end