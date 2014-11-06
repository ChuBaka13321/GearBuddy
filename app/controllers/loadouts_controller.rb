class LoadoutsController < ApplicationController

  def index
    @loadouts = Loadout.all
  end

  def show
    @loadout = Loadout.find(params[:id])
  end

  def new
    @loadout = Loadout.new
  end

  

end