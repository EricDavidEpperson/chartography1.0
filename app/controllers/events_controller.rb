class EventsController < ApplicationController
  def index
    @concert = Event.search(params[:performer])
  end
end
