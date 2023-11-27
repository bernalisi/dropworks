# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Venue.destroy_all
User.destroy_all

anna = User.create!(email: "anna@gmail.com", password: "123456", first_name: "Anna", last_name: "Subotenko")
gio = User.create!(email: "gio@gmail.com", password: "123456", first_name: "Giorgio", last_name: "Mazzuca")

puts("Seeding Venues for Anna...")
venue1 = Venue.create!(name: "The Rusty Spoon", overview: "A cozy restaurant with a rustic atmosphere, serving delicious local cuisine.", address: "123 Main Street, Cityville", price: "25", image_url: "https://example.com/rusty_spoon.jpg", user: anna)
venue2 = Venue.create!(name: "Tech Hub", overview: "A vibrant co-working space with state-of-the-art facilities for tech enthusiasts.", address: "456 Tech Avenue, Silicon Valley", price: "20", image_url: "https://example.com/tech_hub.jpg", user: anna)
venue3 = Venue.create!(name: "Zen Yoga Studio", overview: "Relaxing yoga studio offering classes for all levels, surrounded by a serene environment.", address: "789 Tranquil Lane, Zen City", price: "15", image_url: "https://example.com/zen_yoga.jpg", user: anna)
venue4 = Venue.create!(name: "Gaming Paradise", overview: "An arcade with the latest gaming consoles and classic games, perfect for gamers.", address: "101 Arcade Street, Gameville", price: "30", image_url: "https://example.com/gaming_paradise.jpg", user: anna)
venue5 = Venue.create!(name: "Sunset Beach Resort", overview: "A luxurious beach resort with stunning sunset views, offering a relaxing getaway.", address: "555 Beachfront Drive, Paradise Beach", price: "150", image_url: "https://example.com/sunset_beach.jpg", user: anna)
venue6 = Venue.create!(name: "Artistic Haven", overview: "Art gallery showcasing a diverse collection of contemporary and traditional artworks.", address: "246 Gallery Lane, Artropolis", price: "10", image_url: "https://example.com/artistic_haven.jpg", user: anna)
venue7 = Venue.create!(name: "Green Thumb Nursery", overview: "A gardening center providing a wide variety of plants, seeds, and gardening tools.", address: "876 Garden Avenue, Bloomington", price: "12", image_url: "https://example.com/green_thumb.jpg", user: anna)
venue8 = Venue.create!(name: "Skyline Rooftop Bar", overview: "Chic rooftop bar with panoramic views of the city skyline, serving crafted cocktails.", address: "333 Skyhigh Terrace, Metropolis", price: "18", image_url: "https://example.com/skyline_bar.jpg", user: anna)
venue9 = Venue.create!(name: "Fitness Fusion Studio", overview: "Innovative fitness studio offering a mix of yoga, HIIT, and dance classes.", address: "678 Health Street, Fitville", price: "15", image_url: "https://example.com/fitness_fusion.jpg", user: anna)
venue10 = Venue.create!(name: "Classic Cinema Palace", overview: "Historic cinema showcasing a selection of classic and indie films.", address: "111 Movie Lane, Cinematown", price: "14", image_url: "https://example.com/cinema_palace.jpg", user: anna)

puts("Seeding Bookings for Giorgio...")

venues = [
  venue1,
  venue2,
  venue3,
  venue4,
  venue5,
  venue6,
  venue7,
  venue8,
  venue9,
  venue10
]

booking_dates = [
  "2023-01-15",
  "2023-02-28",
  "2023-03-10",
  "2023-04-22",
  "2023-05-05",
  "2023-06-18",
  "2023-07-01",
  "2023-08-14",
  "2023-09-27",
  "2023-10-08",
  "2023-11-19",
  "2023-12-02",
  "2024-01-13",
  "2024-02-26",
  "2024-03-08",
  "2024-04-20",
  "2024-05-03",
  "2024-06-16",
  "2024-07-29",
  "2024-08-11"
]

venues.each_with_index do |v, i|
  Booking.create!(booking_date: booking_dates[i], venue: v, user: gio)
end

puts("Done :)")
