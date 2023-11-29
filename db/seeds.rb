# run rails db:seed my friend

# destroy instances
puts("1. Destroying old instances")
Booking.destroy_all
User.destroy_all
Venue.destroy_all

# seeding users
puts("2. Seeding Users Anna & Gio...")
anna = User.create!(email: "anna@gmail.com", password: "123456", first_name: "Anna", last_name: "Subotenko")
gio = User.create!(email: "gio@gmail.com", password: "123456", first_name: "Giorgio", last_name: "Mazzuca")

# seeding venues
# note: @Franz lets add rating and any other field once the venue model is complete!

puts("3. Seeding Venues for Anna...")
venue1 = Venue.create!(name: "The Rusty Spoon", overview: "A cozy restaurant with a rustic atmosphere, serving delicious local cuisine.", address: "Pariser Platz, 10117 Berlin, Germany", image_urls: ["https://images.unsplash.com/photo-1445116572660-236099ec97a0?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Y29mZmVlJTIwc2hvcHxlbnwwfHwwfHx8MA%3D%3D"], user: anna)
venue2 = Venue.create!(name: "Tech Hub", overview: "A vibrant co-working space with state-of-the-art facilities for tech enthusiasts.", address: "Panoramastraße 1A, 10178 Berlin", image_urls: ["https://images.unsplash.com/photo-1445116572660-236099ec97a0?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Y29mZmVlJTIwc2hvcHxlbnwwfHwwfHx8MA%3D%3D"], user: anna)
venue3 = Venue.create!(name: "Zen Yoga Studio", overview: "Relaxing yoga studio offering classes for all levels, surrounded by a serene environment.", address: "Friedrichstraße 43-45, 10117 Berlin", image_urls: ["https://images.unsplash.com/photo-1445116572660-236099ec97a0?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Y29mZmVlJTIwc2hvcHxlbnwwfHwwfHx8MA%3D%3D"], user: anna)
venue4 = Venue.create!(name: "Gaming Paradise", overview: "An arcade with the latest gaming consoles and classic games, perfect for gamers.", address: "Europaplatz 1, 10557 Berlin", image_urls: ["https://images.unsplash.com/photo-1445116572660-236099ec97a0?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Y29mZmVlJTIwc2hvcHxlbnwwfHwwfHx8MA%3D%3D"], user: anna)
venue5 = Venue.create!(name: "Sunset Beach Resort", overview: "A luxurious beach resort with stunning sunset views, offering a relaxing getaway.", address: "Bernauer Str. 111, 13355 Berlin", image_urls: ["https://images.unsplash.com/photo-1445116572660-236099ec97a0?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Y29mZmVlJTIwc2hvcHxlbnwwfHwwfHx8MA%3D%3D"], user: anna)
venue6 = Venue.create!(name: "Artistic Haven", overview: "Art gallery showcasing a diverse collection of contemporary and traditional artworks.", address: "Alexanderplatz, 10178 Berlin", image_urls: ["https://images.unsplash.com/photo-1445116572660-236099ec97a0?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Y29mZmVlJTIwc2hvcHxlbnwwfHwwfHx8MA%3D%3D"], user: anna)
venue7 = Venue.create!(name: "Green Thumb Nursery", overview: "A gardening center providing a wide variety of plants, seeds, and gardening tools.", address: "Hackescher Markt, 10178 Berlin", image_urls: ["https://images.unsplash.com/photo-1445116572660-236099ec97a0?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Y29mZmVlJTIwc2hvcHxlbnwwfHwwfHx8MA%3D%3D"], user: anna)
venue8 = Venue.create!(name: "Skyline Rooftop Bar", overview: "Chic rooftop bar with panoramic views of the city skyline, serving crafted cocktails.", address: "Großer Tiergarten, 10557 Berlin", image_urls: ["https://images.unsplash.com/photo-1445116572660-236099ec97a0?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Y29mZmVlJTIwc2hvcHxlbnwwfHwwfHx8MA%3D%3D"], user: anna)
venue9 = Venue.create!(name: "Fitness Fusion Studio", overview: "Innovative fitness studio offering a mix of yoga, HIIT, and dance classes.", address: "Bodestraße 1-3, 10178 Berlin", image_urls: ["https://images.unsplash.com/photo-1445116572660-236099ec97a0?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Y29mZmVlJTIwc2hvcHxlbnwwfHwwfHx8MA%3D%3D"], user: anna)
venue10 = Venue.create!(name: "Classic Cinema Palace", overview: "Historic cinema showcasing a selection of classic and indie films.", address: "Spandauer Damm 10-22, 14059 Berlin", image_urls: ["https://images.unsplash.com/photo-1445116572660-236099ec97a0?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Y29mZmVlJTIwc2hvcHxlbnwwfHwwfHx8MA%3D%3D"], user: anna)

# seeding bookings
puts("4. Seeding Bookings for Gio...")

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
  "2023-10-08"
]

venues.each_with_index do |v, i|
  Booking.create!(booking_date: booking_dates[i], venue: v, user: gio)
end

puts("5. Seeding completed")
