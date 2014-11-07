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

  def create
        @loadout = Loadout.new(params.require(:loadout).permit(:name, :chestgear, :pouch, :belt, :headgear, :footwear))
        if @loadout.save
            redirect_to loadouts_path
        else
            render 'new'
        end
  end

  def edit
      @loadout = Loadout.find(params[:id])
  end

  def update
        @loadout = Loadout.find(params[:id])
        if @loadout.update_attributes(params.require(:loadout).permit(:name, :chestgear, :pouch, :belt, :headgear, :footwear))
            redirect_to loadouts_path
        else
            render 'edit'
        end
  end

  def destroy
        @loadout = Loadout.find(params[:id])
        @loadout.destroy
        redirect_to loadouts_path
    end

end