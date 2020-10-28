class RegionsController < ApplicationController

  private

  def region_params
    params.require(:region).permit(:name, region_ids: [])
  end
end
