class PlantTagsController < ApplicationController
  before_action :find_garden
  before_action :find_plant

  def new
    @plant_tag = PlantTag.new
  end

  def create
    @tags = Tag.where(id: params[:plant_tag][:tag])
    @tags.each do |tag|
      plant_tag = PlantTag.new(plant: @plant, tag: tag)
      plant_tag.save
    end

    redirect_to garden_path(@garden)
  end

  private

  def find_plant
    @plant = Plant.find(params[:plant_id])
  end

  def find_garden
    @garden = Garden.find(params[:garden_id])
  end
end
