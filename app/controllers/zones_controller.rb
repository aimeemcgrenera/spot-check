class ZonesController < ApplicationController
  def index
    @results = Zone.getData("ROSCOE")
  end
end
