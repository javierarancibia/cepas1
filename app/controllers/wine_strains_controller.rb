class WineStrainsController < ApplicationController


  def index
    @wine_strains = WineStrain.all
  end

  def new
    @wine_strain = WineStrain.new
    @wines = Wine.all
    @strains = Strain.all
  end

  def create
    @strain_wine = WineStrain.new(wine_strain_params)
    @strain_wine.save!
    redirect_to root_path, notice: 'Nuevo vino creado'
    
  end

  private
  def wine_strain_params
    params.require(:wine_strain).permit(:wine_id, :strain_id, :proportion)
  end
end
