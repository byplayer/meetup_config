require './meetup'

mt = Meetup.load('singapore-ruby-group.conf')

puts mt.group
puts mt.organizer
puts mt.sponsors.join(', ')
