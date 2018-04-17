class ZonesController < ApplicationController
  def index
    @results = Zone.retrieve_results("Division")
  end
end
