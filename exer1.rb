
def event_search(x)
  event_city = []
# We are returning the results of this method as a blank array
  event_city.each do |cities|
# .each do looks through the entire array argument
# |venue| is what we are naming the array
    if cities[:city] == "#{x}"
      event_city << cities
    end
  end
  # puts "-".times(5)
  return event_city
end

cities = [
{id: "38fj8d900", city: 'Hamilton', events: [{date: '2017-01-01', attendees: 100}, {date: '2016-12-31', attendees: 60}]},
{id: "39fo837y7", city: 'Toronto', events: [{date: '2017-03-30', attendees: 3000}, {date: '2017-07-07', attendees: 2500}, {date: '2017-02-04', attendees: 900}]},
{id: "58uj8d800", city: 'Montreal', events: [{date: '2017-08-10', attendees: 250}]},
{id: "48hn8d900", city: 'Kingston', events: [{ date: '2015-04-16', attendees: 45}]}
]


p event_search('Hamilton')
p event_search('Toronto')
p event_search('Montreal')
p event_search('Kingston')

# I tried copying from the train exercise

# def venue_search(venues_array)
# # def is creating the method
# # venue_search is the name of the methods
# # (venues_array) is the argument.... so the name of the array
#   possible_venues = []
# # We are returning the results of this method as a blank array
#   venues_array.each do |venue|
# # .each do looks through the entire array argument
# # |venue| is what we are naming the array
#     if venue[:wheelchair_accessible] == true && venue[:capacity] > 150 && venue[:city] == "Toronto"
#       possible_venues << venue
# #
#     end
#   end
#   return possible_venues
# end
# venues = [
# { address: "123 Main Street", city: "Toronto", wheelchair_accessible: true, capacity: 100 },
# { address: "567 Centre Street", city: "Toronto", wheelchair_accessible: false, capacity: 400 },
# { address: "9B Ontario Street", city: "Montreal", wheelchair_accessible: true, capacity: 1000 },
# { address: "56 Road Avenue", city: "Ottawa", wheelchair_accessible: true, capacity: 650 },
# { address: "938 Avenue Way East", city: "Toronto", wheelchair_accessible: false, capacity: 90 },
# { address: "34 Main Street West", city: "London", wheelchair_accessible: false, capacity: 300 },
# { address: "44 Quebec Road", city: "Toronto", wheelchair_accessible: true, capacity: 200 },
# { address: "10 Spruce Avenue Ouest", city: "Montreal", wheelchair_accessible: false, capacity: 525 }
# ]
# event_venues = venue_search(venues)
#   # Loop thrugh event venues matched and print each out
#   event_venues.each do |venue|
#     p venue[:address]
#   end

# Working copy:
# events.each do |event|
#   p event[:city]
#   p "------------"
#     event[:events].each do |event|
#       p "Date: #{event[:date]}, #{event[:attendees]} people"
#   end
# end
