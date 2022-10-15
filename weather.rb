require "open-uri"
require "json"
gmaps_key = ENV.fetch("GMAPS_KEY")
p "Where are you located?"
# loc = gets.chomp
loc = "chicago"
gmaps_url = "https://maps.googleapis.com/maps/api/geocode/json?address=#{loc}&key=#{gmaps_key}"

rawdata = URI.open(gmaps_url).read

parsed_data = JSON.parse(rawdata)


result = parsed_data["results"].[](0)


geo = result["geometry"]
location = geo["location"]

lat = location["lat"]
lng = location["lng"]

p lat
p lng
