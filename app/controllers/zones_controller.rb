class ZonesController < ApplicationController
  def index
    @results = Zone.getData("ROSCOE", "W")
  end


end
