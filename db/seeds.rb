# run rails db:seed my friend

# destroy instances
puts("1. Destroying old instances")
Booking.destroy_all
User.destroy_all
Venue.destroy_all
OpeningHour.destroy_all

# seeding users
puts("2. Seeding Users Anna & Gio...")
anna = User.create!(email: "anna@gmail.com", password: "123456", first_name: "Anna", last_name: "Subotenko")
gio = User.create!(email: "gio@gmail.com", password: "123456", first_name: "Giorgio", last_name: "Mazzuca")

# seeding venues
# note: @Franz lets add rating and any other field once the venue model is complete!

puts("3. Seeding Venues for Anna...")
# venue2 = Venue.create!(name: "Tech Hub", overview: "A vibrant co-working space with state-of-the-art facilities for tech enthusiasts.", address: "Panoramastraße 1A, 10178 Berlin", image_urls: ["https://images.unsplash.com/photo-1445116572660-236099ec97a0?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Y29mZmVlJTIwc2hvcHxlbnwwfHwwfHx8MA%3D%3D"], user: anna)
# venue3 = Venue.create!(name: "Zen Yoga Studio", overview: "Relaxing yoga studio offering classes for all levels, surrounded by a serene environment.", address: "Friedrichstraße 43-45, 10117 Berlin", image_urls: ["https://images.unsplash.com/photo-1445116572660-236099ec97a0?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Y29mZmVlJTIwc2hvcHxlbnwwfHwwfHx8MA%3D%3D"], user: anna)
# venue4 = Venue.create!(name: "Gaming Paradise", overview: "An arcade with the latest gaming consoles and classic games, perfect for gamers.", address: "Europaplatz 1, 10557 Berlin", image_urls: ["https://images.unsplash.com/photo-1445116572660-236099ec97a0?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Y29mZmVlJTIwc2hvcHxlbnwwfHwwfHx8MA%3D%3D"], user: anna)
# venue5 = Venue.create!(name: "Sunset Beach Resort", overview: "A luxurious beach resort with stunning sunset views, offering a relaxing getaway.", address: "Bernauer Str. 111, 13355 Berlin", image_urls: ["https://images.unsplash.com/photo-1445116572660-236099ec97a0?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Y29mZmVlJTIwc2hvcHxlbnwwfHwwfHx8MA%3D%3D"], user: anna)
# venue6 = Venue.create!(name: "Artistic Haven", overview: "Art gallery showcasing a diverse collection of contemporary and traditional artworks.", address: "Alexanderplatz, 10178 Berlin", image_urls: ["https://images.unsplash.com/photo-1445116572660-236099ec97a0?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Y29mZmVlJTIwc2hvcHxlbnwwfHwwfHx8MA%3D%3D"], user: anna)
# venue7 = Venue.create!(name: "Green Thumb Nursery", overview: "A gardening center providing a wide variety of plants, seeds, and gardening tools.", address: "Hackescher Markt, 10178 Berlin", image_urls: ["https://images.unsplash.com/photo-1445116572660-236099ec97a0?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Y29mZmVlJTIwc2hvcHxlbnwwfHwwfHx8MA%3D%3D"], user: anna)
# venue8 = Venue.create!(name: "Skyline Rooftop Bar", overview: "Chic rooftop bar with panoramic views of the city skyline, serving crafted cocktails.", address: "Großer Tiergarten, 10557 Berlin", image_urls: ["https://images.unsplash.com/photo-1445116572660-236099ec97a0?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Y29mZmVlJTIwc2hvcHxlbnwwfHwwfHx8MA%3D%3D"], user: anna)
# venue9 = Venue.create!(name: "Fitness Fusion Studio", overview: "Innovative fitness studio offering a mix of yoga, HIIT, and dance classes.", address: "Bodestraße 1-3, 10178 Berlin", image_urls: ["https://images.unsplash.com/photo-1445116572660-236099ec97a0?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Y29mZmVlJTIwc2hvcHxlbnwwfHwwfHx8MA%3D%3D"], user: anna)
# venue10 = Venue.create!(name: "Classic Cinema Palace", overview: "Historic cinema showcasing a selection of classic and indie films.", address: "Spandauer Damm 10-22, 14059 Berlin", image_urls: ["https://images.unsplash.com/photo-1445116572660-236099ec97a0?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8Y29mZmVlJTIwc2hvcHxlbnwwfHwwfHx8MA%3D%3D"], user: anna)


venue1 = Venue.create!(name: "St. Oberholz",
  overview: "Dive into the heart of Berlin at St. Oberholz Mitte, a trendy coworking space fostering collaboration and creativity. This vibrant workspace offers a terrific environment with a café, bar, and lounge for work, relaxation, and socializing.",
  address: "Rosenthaler Str. 72A, 10119 Berlin",
  image_urls: ["https://lh3.googleusercontent.com/p/AF1QipOXv-uGu9PoYe9bJPxAAxLLlJjQXRjEYCp7LpY=s1360-w1360-h1020", "https://lh3.googleusercontent.com/p/AF1QipMN-Kbe0wlFKp2OYv51DtX47SXYrMoUO-YbNcpC=s1360-w1360-h1020", "https://lh3.googleusercontent.com/p/AF1QipO3BVEy-N-u-q2CGCjPubwxQEKFtmSNShwMh-Lq=s1360-w1360-h1020"],
  user: anna)
venue2 = Venue.create!(name: "betahaus",
  overview: "betahaus in Berlin is not just a coworking space; it's a lifestyle. This innovative hub balances work and play, providing a stimulating environment for creative minds. Join a community where ideas flow freely, fostering growth, innovation, and professional connections.",
  address: "Rudi-Dutschke-Straße 23, 10969 Berlin",
  image_urls: ["https://lh3.googleusercontent.com/p/AF1QipMF7ZT-a5V0BIgu3ZvstuLKHj9ZFOlOvQt18Zge=s1360-w1360-h1020", "https://lh3.googleusercontent.com/p/AF1QipM45NGO6qXHOpuOeK4TexjoZOFS22qGfPPEjpOx=s1360-w1360-h1020", "https://lh3.googleusercontent.com/p/AF1QipNEYDnoByS7LQJUqJXDB9zmW0nZQeGQJ4JsSf1K=s1360-w1360-h1020"],
  user: anna)
venue3 = Venue.create!(name: "Denizen Eiswerk",
  overview: "Experience a unique coworking blend at Denizen Eiswerk in Berlin, where practicality meets creative charm. This space invites you to work surrounded by inspiration, offering a distinctive atmosphere that puts your ideas in the spotlight.",
  address: "Köpenicker Str. 40, 10179 Berlin",
  image_urls: ["https://lh3.googleusercontent.com/p/AF1QipOLZQx718ZhjSmJ_DdzQiNqnjfmrphz9TDB3Csx=s1360-w1360-h1020", "https://lh3.googleusercontent.com/p/AF1QipML0YLHcy146sIA-ehoaslQ2MXXgUcwf15YM--x=s1360-w1360-h1020", "https://lh3.googleusercontent.com/p/AF1QipOWWxtDSjepQQrchdhqRLfL6b9koqdcniH2QA28=s1360-w1360-h1020"],
  user: anna)
venue4 = Venue.create!(name: "Techspace X-Berg",
  overview: "Tech enthusiasts, welcome to Techspace Kreuzberg – a cutting-edge coworking experience in Berlin. Designed for innovation, this space provides state-of-the-art facilities and a tech-driven community, where collaboration meets technology for boundless productivity.",
  address: "Lobeckstraße 36-40, 10969 Berlin",
  image_urls: ["https://lh3.googleusercontent.com/p/AF1QipP7DMZQ7WOVFkbpvBeBJ99e1sYP7E9kb7psK3EL=s1360-w1360-h1020", "https://lh3.googleusercontent.com/p/AF1QipMZH_o_gRW4uBA__b2YRmubM6rH9EVmHT-gEzwT=s1360-w1360-h1020", "https://lh3.googleusercontent.com/p/AF1QipMi8ZdXRt6aN3sPsnW5ePVYS5iTqB2gBbTuLGJE=s1360-w1360-h1020", "https://lh3.googleusercontent.com/p/AF1QipO88YKLk-2rxG-ldE9axNvUPVohkLFO1-Wu2830=s1360-w1360-h1020"],
  user: anna)
venue5 = Venue.create!(name: "Soho House",
  overview: "Soho House in Berlin is where luxury meets productivity. This coworking space is about embracing a sophisticated lifestyle while offering an exclusive setting for work. From private offices to communal areas, it's a fusion of elegance and innovation.",
  address: "Torstraße 1, 10119 Berlin",
  image_urls: ["https://lh3.googleusercontent.com/p/AF1QipN9_0pE9kEKvEddJr48QZ8oiuqJSW14THRf3eUH=s1360-w1360-h1020", "https://res.cloudinary.com/soho-house/image/upload/f_auto,q_auto,fl_progressive:steep,w_800/t_dc_base/sitecore-prod/images/dotcom-sites/house-pages/berlin/10-may-update/03_berlin_update_43.jpg", "https://res.cloudinary.com/soho-house/image/upload/f_auto,q_auto,fl_progressive:steep,w_800/t_dc_base/sitecore-prod/images/dotcom-sites/house-pages/berlin/2023-house-page-update/07_berlin_housepage_43.jpg"],
  user: anna)
venue6 = Venue.create!(name: "Sir Savigny",
  overview: "Sir Savigny in Berlin is not just a hotel; it's a curated elegance experience. With modern design and classic charm, this accommodation offers a sophisticated haven for those who appreciate the finer things in life.",
  address: "Kantstraße 144, 10623 Berlin",
  image_urls: ["https://www.sirhotels.com/media/images/sir-savigny-berlin-public-spaces_.2e16d0ba.fill-1710x966.jpg", "https://cf.bstatic.com/xdata/images/hotel/max1024x768/83995735.jpg?k=6827b8824390a2a4b6dbb2c25865117505db8c111837ae43824320c98f464d64&o=&hp=1", "https://media.cntraveler.com/photos/5b916decc65ac82d277946cd/16:9/w_2560,c_limit/Sir-Savigny-Hotel_StevevHerud_2018_Sir-Savigny-image-credit--Steve-Herud-(8).jpg"],
  user: anna)
venue7 = Venue.create!(name: "Student Hotel",
  overview: "The Student Hotel in Berlin redefines accommodation, creating a vibrant community for students, professionals, and travelers. With modern amenities and a dynamic atmosphere, it's a home away from home, whether for a short visit or an extended stay.",
  address: "Alexanderstraße 40, 10179 Berlin",
  image_urls: ["https://masquespacio.com/wp-content/uploads/2022/01/The-Student-Hotel-Berlin-Masquespacio-Gregory-Abbate-05.jpeg", "https://images.squarespace-cdn.com/content/v1/598b56ce1e5b6cbabca9322f/1537212073286-64KLRJUNOI4GE40BR6T7/15The-Student-Hotel-Campus-Barcelona-Masquespacio.jpg", "https://masquespacio.com/wp-content/uploads/2022/01/The-Student-Hotel-Berlin-Masquespacio-Gregory-Abbate-10.jpeg"],
  user: anna)
venue8 = Venue.create!(name: "25h Hotel",
  overview: "Experience the unique charm of 25h Hotel in Berlin, where each room tells a story. Beyond conventional accommodation, this hotel offers a journey through creativity and design, providing a delightful surprise in every detail.",
  address: "Budapester Str. 40, 10787 Berlin",
  image_urls: ["https://www.visitberlin.de/system/files/styles/visitberlin_hero_visitberlin_desktop_2x/private/image/25hours_075_c_visitBerlin_Mo_Wuestenhagen_web.jpg?h=1c9b88c9&itok=cg5qKpQq", "https://www.top10berlin.de/sites/top10berlin.de/files/styles/juicebox/public/location/slider/2014/06/02/fullsize_25h_bikini_berlin_betreiber_1.jpg?itok=Rs8EDU1M", "https://cf.bstatic.com/xdata/images/hotel/max1024x768/34271668.jpg?k=b1d53875c40cbbc96aa9853f5057354253bf4d75468affb7c6c2cb1ea45e214d&o=&hp=1"],
  user: anna)
venue9 = Venue.create!(name: "Katerschmaus",
  overview: "Katerschmaus in Berlin is where gastronomy becomes an art form. This restaurant celebrates flavors and creativity in a vibrant atmosphere. From a menu inspired by local ingredients to eclectic ambiance, it offers a culinary experience that transcends the ordinary.",
  address: "Holzmarktstraße 25, 10243 Berlin",
  image_urls: ["https://www.tagesspiegel.de/berlin/images/fame/alternates/BASE_16_9_W1400/fame.jpeg", "https://lh3.googleusercontent.com/p/AF1QipOUOnM3Dc2gIM4wVTJe-lCd3nwBDURbZRWWf4O0=s1360-w1360-h1020", "https://lh3.googleusercontent.com/p/AF1QipNowcFPXbqhtRVZm_GCrWdoGbpJyUwBTQeOt0EI=s1360-w1360-h1020"],
  user: anna)


venues = [
  venue1,
  venue2,
  venue3,
  venue4,
  venue5,
  venue6,
  venue7,
  venue8,
  venue9
]
# seeding bookings
puts("4. Seeding Bookings for Gio...")


booking_dates = [
  "2023-01-15",
  "2023-02-28",
  "2023-03-10",
  "2023-04-22",
  "2023-05-05",
  "2023-06-18",
  "2023-07-01",
  "2023-08-14",
  "2023-09-27"
]
# Seed opening hours for Venue 1
OpeningHour.create(day: 0, open_time: '10:00:00', closing_time: '18:00:00', venue: venue1)  
OpeningHour.create(day: 1 , open_time: '09:00:00', closing_time: '17:00:00', venue: venue1);
OpeningHour.create(day: 2, open_time: '10:00:00', closing_time: '18:00:00', venue: venue1) 
OpeningHour.create(day: 3, open_time: '10:00:00', closing_time: '18:00:00', venue: venue1) 
OpeningHour.create(day: 4, open_time: '10:00:00', closing_time: '18:00:00', venue: venue1) 
OpeningHour.create(day: 5, open_time: '10:00:00', closing_time: '18:00:00', venue: venue1) 
OpeningHour.create(day: 6, open_time: '10:00:00', closing_time: '18:00:00', venue: venue1) 


# Seed opening hours for Venue 2
OpeningHour.create(day: 0, open_time: '10:00:00', closing_time: '16:00:00', venue: venue2)  
OpeningHour.create(day: 1 , open_time: '09:00:00', closing_time: '17:00:00', venue: venue2);
OpeningHour.create(day: 2, open_time: '10:00:00', closing_time: '18:00:00', venue: venue2) 
OpeningHour.create(day: 3, open_time: '10:00:00', closing_time: '18:00:00', venue: venue2) 
OpeningHour.create(day: 4, open_time: '10:00:00', closing_time: '19:00:00', venue: venue2) 
OpeningHour.create(day: 5, open_time: '10:00:00', closing_time: '18:00:00', venue: venue2) 
OpeningHour.create(day: 6, open_time: '10:00:00', closing_time: '19:00:00', venue: venue2) 


# opening_hours_data = [
#   { day: 'monday', open_time: '09:00', closing_time: '17:00' },
#   { day: 'tuesday', open_time: '10:00', closing_time: '18:00' },
#   # Add more opening hours data as needed
# ]

# if @venue
#   opening_hour = @venue.opening_hours.find_or_initialize_by(day: data[:day])
#   # Rest of your logic
# else
#   puts "Venue not found or created."
# end

venues.each_with_index do |v, i|
  Booking.create!(booking_date: booking_dates[i], venue: v, user: gio)
end

puts("5. Seeding completed")
