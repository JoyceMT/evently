class ProviderServicesController < ApplicationController
  def new
    @provider_services = ProviderService.new
  end

  def create
    @provider_services = ProviderService.new(provider_services_params)
    @provider_services.save
  end

  private

  def provider_services_params
    params.require(:provider_services).permit(:service_id, :provider_id)
  end
end
