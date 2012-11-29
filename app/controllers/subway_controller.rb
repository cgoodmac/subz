class SubwayController < ApplicationController
  def index

  end

  def entrances
    data = HTTParty.get('http://data.cityofnewyork.us/api/views/drex-xx56/rows.json')

  end
end  