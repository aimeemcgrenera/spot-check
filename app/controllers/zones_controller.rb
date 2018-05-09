class ZonesController < ApplicationController

  def index
    odd_even = params[:odd_even]
    street_direction = params[:street_direction]
    street_name = params[:street_name]
    street_type = params[:street_type]

    results = Zone.getData(odd_even, street_direction, street_name, street_type)

    render :json => results

  end


end
