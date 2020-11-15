def badge_maker(name)
    names = "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
    names = []
    attendees.each do |name|
        names << badge_maker(name)
    end
    return names
end

def welcome_message(name)
    message = "Hello #{name}!"
end

# def room_assignments(attendees)
#     count = 1
#     rooms = "You'll be assigned to room #{counter}!"
#     counter += 1
# end

def assign_rooms(attendees)
    rooms = []
    attendees.each_with_index.map do |room,index|
        "Hello, #{room}! You'll be assigned to room #{index+1}!"
    end
end

def printer(attendees)
    badges = batch_badge_creator(attendees)
      badges.each do |name|
        puts name
    end
  rooms = assign_rooms(attendees)
      rooms.each do |room|
        puts room
  end
end