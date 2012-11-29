class SubwayController < ApplicationController
  def index

  end

  def entrances

    Entrance.delete_all

    data = HTTParty.get('http://data.cityofnewyork.us/api/views/drex-xx56/rows.json')
    json = JSON(data.body)
    entrance_array = json["data"]

    entrance_array.each do |e|
      lat = e[9][1]
      long = e[9][2]
      name = e[10]
      lines_string = e[12]

      e1 = Entrance.create(:name => name, :lat => lat, :long => long, :line => lines_string)

      lines_array = lines_string.split('-')

      lines_array.each do |l|
        line = Line.where(:name => l).first
        line.entrances << e1
      end

    end

  end

end  