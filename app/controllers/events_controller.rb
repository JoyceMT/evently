class EventsController < ApplicationController

  private

  def event_params
    params.require(:event).permit(:name, event_ids: [])
  end
end
