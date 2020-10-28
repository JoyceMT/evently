class ProviderCategoriesController < ApplicationController
  def new
    @provider_categories = ProviderCategory.new
  end

  def create
    @provider_categories = ProviderCategory.new(provider_categories_params)

    if @provider_categories.save
      redirect_to provider__regions_path(@provider)
    else
      render :new
    end
  end

  private

  def provider_categories_params
    params.require(:provider_categories).permit(:category_id, :provider_id)
  end
end
