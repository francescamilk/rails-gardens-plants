class PlantsController < ApplicationController
  def new
    # params[:garden_id]
    @garden = Garden.find(params[:garden_id])
    @plant = Plant.new
  end

  def create
    @garden = Garden.find(params[:garden_id])
    @plant = Plant.new(plant_params)
    @plant.garden = @garden

    redirect_to garden_path(@garden) if @plant.save
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy

    redirect_to garden_path(@garden)
  end

  private

  def plant_params
    params.require(:plant).permit(:name, :banner_url)
  end
end
