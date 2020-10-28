class ProviderRegionsController < ApplicationController
  def new
    @provider_regions = ProviderRegion.new
  end

  def create
    @provider_regions = ProviderRegion.new(provider_regions_params)

    if @provider_regions.save
      redirect_to provider_path(@provider)
    else
      render :new
    end
  end

  private

  def provider_regions_params
    params.require(:provider_regions).permit(:region_id, :provider_id)
  end
end
