class ProvidersController < ApplicationController
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
    @provider = Provider.new
    @provider.provider_events.build
    @provider.provider_services.build
    @provider.provider_regions.build
  end

  def create
    @provider = Provider.new(provider_params)

    if @provider.save
      redirect_to provider_path(@provider)
    else
      render :new
    end
  end

  def edit
    @provider = Provider.find(params[:id])
  end

  def update
    @provider = Provider.find(params[:id])
    @provider.update(provider_params)

    redirect_to provider_path(@provider)
  end

  def destroy
    @provider = Provider.find(params[:id])
    @provider.destroy
  end

  private

  def provider_params
    params.require(:provider).permit(:name, :description, :address, :phone, :min_price, :max_price, :facebook, :instagram, :google, { event_ids: [] }, { service_ids: [] }, { region_ids: [] }, { category_ids: [] } )
  end
end
