class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)
    @service.save
  end

  def destroy
    @service.destroy
  end

  private

  def service_params
    params.require(:service).permit(:name, :category_id, service_ids: [])
  end
end
