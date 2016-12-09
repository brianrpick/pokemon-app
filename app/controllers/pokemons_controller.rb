# adsfasd
class PokemonsController < ApplicationController
  def index
    # plurl because multiple pokemon
    @pokes = Pokemon.all
  end

  def show
    @poke = Pokemon.find(params[:id])
  end

  def create
    @poke = Pokemon.create(name: params[:name], hp: params[:hp])
    render :show
  end

  def update
    @poke = Pokemon.find(params[:id])
    # *update* instead of assign saves for you
    @poke.update_attributes(name: params[:name], hp: params[:hp])
    render :show
  end

  def destroy
    @poke = Pokemon.find(params[:id])
    @poke.destroy
    # not rendered because no id after delte
    redirect_to :index
  end
end
