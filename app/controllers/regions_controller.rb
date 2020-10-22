class RegionsController < ApplicationController
  def index
    @cregions = Region.all
  end

  def new
    @region = Region.new
  end

  def create
    @region = Region.new(region_params)
    @region.save
  end

  def destroy
    @region.destroy
  end

  private

  def region_params
    params.require(:region).permit(:name)
  end
end
