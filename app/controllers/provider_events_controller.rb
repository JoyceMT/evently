class ProviderEventsController < ApplicationController
  def new
    @provider_events = ProviderEvent.new
  end

  def create
    @provider_events = current_provider.provider_events.build(provider_events_params)
    @provider.event = current_event

    if @provider_events.save
      redirect_to provider_categories__new_path
    else
      render :new
    end
  end

  private

  def provider_events_params
    params.require(:provider_events).permit(:event_id, :provider_id)
  end
end
