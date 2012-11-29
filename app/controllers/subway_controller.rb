class SubwayController < ApplicationController
  def index

  end

  def entrances
    data = HTTParty.get('http://data.cityofnewyork.us/api/views/drex-xx56/rows.json')
    json = JSON(data.body)
    entrance_array = json["data"]
    

    binding.pry
  end
end  