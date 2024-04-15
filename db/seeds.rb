# Create a host
host = Host.create!(
  first_name: "John",
  last_name: "Doe",
)
puts "Host created successfully."

# Create an experience associated with the host
experience = Experience.create!(
  title: "Example Experience",
  description: "This is a sample experience.",
  host: host,
)
puts "Experience created successfully."


# Create a traveller associated with the booking
traveller = Traveller.create!(
  first_name: "Jane",
  last_name: "Smith",
)

# Create a booking associated with the experience
booking = Booking.create!(
checkin: Date.new(2024, 4, 15),
checkout: Date.new(2024, 4, 20),
experience: experience,
traveller: traveller,
)
puts "Booking created successfully."


puts "all"
