class ServicesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_service, only: [:edit, :update, :destroy]

  def index
    @services = Service.all
  end

  def new
    @service = Service.new
    authorize @service
  end

  def create
    @service = Service.new(service_params)
    authorize @service
    if @service.save
      redirect_to services_index_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @service.update(service_params)

    redirect_to services_index_path
  end

  def destroy
    @service.destroy
  end

  private

  def set_service
    @service = Service.find(params[:id])
    authorize @service
  end

  def service_params
    params.require(:service).permit(:name, :category_id, service_ids: [])
  end
end
