class LoadoutsController < ApplicationController

  def index
    @loadouts = Loadout.all
    @users = User.all
    @photos = Photo.all
  end

  def show
    @loadout = Loadout.find(params[:id])
    @users = User.all
    
  end

  def new
    @loadout = Loadout.new
    @photos = Photo.new
  end

  def create
        @loadout = current_user.loadouts.new(params.require(:loadout).permit(:name, :chestgear, :pouch, :belt, :headgear, :footwear))
        #@loadout = Loadout.new(params.require(:loadout).permit(:name, :chestgear, :pouch, :belt, :headgear, :footwear))
        if @loadout.save
            redirect_to loadouts_path
        else
            render 'new'
        end
  end

  def edit
      @loadout = Loadout.find(params[:id])
      @photo = Photo.all
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