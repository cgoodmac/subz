class SubwayController < ApplicationController
  def index

  end

  def populate

    Entrance.delete_all

    data = HTTParty.get('http://data.cityofnewyork.us/api/views/drex-xx56/rows.json')
    json = JSON(data.body)
    entrance_array = json["data"]

    entrance_array.each do |e|
      lat = e[9][1]
      long = e[9][2]
      name = e[10]
      lines_string = e[12].gsub(/.{3}Express/, '')

      e1 = Entrance.create(:name => name, :lat => lat, :long => long, :line => lines_string)
    end

  end

  def entrances
    @lines = Line.all
    @entrances = Entrance.all
  end

  def search
    query = params[:query].gsub('~','')
    if query.present? && query.downcase != "all"
      @entrances = Entrance.text_search(query)
    else
      @entrances = Entrance.all
    end
  end

end  