class ProvidersController < ApplicationController
  def index
    @providers = Provider.all
  end

  def show
    @provider = Provider.find(params[:id])
  end

  def new
    @provider = Provider.new
    @provider.provider_events.build
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
    params.require(:provider).permit(:name, :description, :address, :phone, :min_price, :max_price, :facebook, :instagram, :google, provider_events_attributes: [:id, :event_name, :event_id, :provider_id])
  end
end
