class ProvidersController < ApplicationController
  before_action :set_provider, only: [:edit, :update, :destroy]

  def index
    if params[:event_ids]
      @providers = Provider.joins(:events).where('events.id' =>  params[:event_ids])
    elsif params[:service_ids]
      @providers = Provider.joins(:services).where('services.id' =>  params[:service_ids])
    elsif params[:region_ids]
      @providers = Provider.joins(:regions).where('regions.id' =>  params[:region_ids])
    else
      @providers = Provider.all
    end
  end

  def show
    @provider = Provider.find(params[:id])
  end

  def new
    @provider = current_user.providers.new
    authorize @provider
    @provider.provider_events.build
    @provider.provider_services.build
    @provider.provider_regions.build
  end

  def create
    @provider = current_user.providers.new(provider_params)
    authorize @provider
    if @provider.save
      redirect_to @provider
    else
      render :new
    end
  end

  def edit
  end

  def update
    @provider.update(provider_params)

    redirect_to provider_path(@provider)
  end

  def destroy
    @provider.destroy
  end

  def set_provider
    @provider = Provider.find(params[:id])
    authorize @provider
  end

  private

  def provider_params
    params.require(:provider).permit(:name, :description, :address, :phone, :min_price, :max_price, :facebook, :instagram, :google, { event_ids: [] }, { service_ids: [] }, { region_ids: [] }, { category_ids: [] }, :user_id, photos: [] )
  end
end
