class TopController < ApplicationController

  def index
    @topics = Topic.all
    @events = Event.all
  end
  
end
