Booking.destroy_all
Traveller.destroy_all
Experience.destroy_all
Host.destroy_all



# Create a host
host = Host.create!(
  first_name: "John",
  last_name: "Doe",
  email: "andy@andy.com",
  password: "password"
)
puts "Host created successfully."

# Create an experience associated with the host
experience = Experience.create!(
  title: "Brazilian Conservation Expedition",
  description: "Join us for an unforgettable conservation expedition in the heart of the Brazilian Amazon rainforest.
  You'll have the opportunity to work alongside local conservationists, researchers, and indigenous communities to
  protect endangered species, restore habitats, and learn about the rich biodiversity of the Amazon.",
  host: host
)

puts "Experience created successfully."

# Create a traveller associated with the booking
traveller = Traveller.create!(
  first_name: "Jane",
  last_name: "Smith",
  email: "gssdsd@afaf.com",
  password: "password"
)

puts "Traveller created successfully."

# Create a booking associated with the experience
booking = Booking.create!(
checkin: Date.new(2024, 4, 15),
checkout: Date.new(2024, 4, 20),
experience: experience,
traveller: traveller,
message: "I'm excited to join your conservation expedition!"
)
puts "Booking created successfully."


puts "all"
