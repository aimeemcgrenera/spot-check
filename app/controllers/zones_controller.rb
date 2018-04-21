class ZonesController < ApplicationController

  def index
    @results = Zone.getData("E", "W", "ROSCOE", "ST")
  end


end
