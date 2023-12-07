# run rails db:seed my friend

# destroy instances
puts("1. Destroying old instances")
Booking.destroy_all
User.destroy_all
Venue.destroy_all

# seeding users
puts("2. Seeding Users...")
anna = User.create!(email: "anna@gmail.com", password: "123456", first_name: "Anna", last_name: "Subotenko")
gio = User.create!(email: "gio@gmail.com", password: "123456", first_name: "Giorgio", last_name: "Mazzuca")
bernardo = User.create!(email: "bernardo@gmail.com", password: "123456", first_name: "Bernardo", last_name: "Lisi")
franz = User.create!(email: "franz@gmail.com", password: "123456", first_name: "Franz", last_name: "Shurman")
tony_stark = User.create!(email: "tony@gmail.com", password: "123456", first_name: "Tony", last_name: "Stark")
emma = User.create!(email: "emma@gmail.com", password: "123456", first_name: "Emma", last_name: "Runzel")
adam = User.create!(email: "adam@gmail.com", password: "123456", first_name: "Adam", last_name: "Tomczyk")
lucas = User.create!(email: "lucas@gmail.com", password: "123456", first_name: "Lucas", last_name: "Gruner")
josh = User.create!(email: "josh@gmail.com", password: "123456", first_name: "Joshua", last_name: "Smith")
david = User.create!(email: "david@gmail.com", password: 123456, first_name: "David", last_name: "Heinemeier Hansson")


# seeding venues
# note: @Franz lets add rating and any other field once the venue model is complete!

puts("3. Seeding Venues...")
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
  image_urls: ["https://lh3.googleusercontent.com/p/AF1QipMN-Kbe0wlFKp2OYv51DtX47SXYrMoUO-YbNcpC=s1360-w1360-h1020","https://lh3.googleusercontent.com/p/AF1QipOXv-uGu9PoYe9bJPxAAxLLlJjQXRjEYCp7LpY=s1360-w1360-h1020", "https://lh3.googleusercontent.com/p/AF1QipO3BVEy-N-u-q2CGCjPubwxQEKFtmSNShwMh-Lq=s1360-w1360-h1020"],
  wifi_speed: 127,
  capacity: 9,
  user: anna)
venue2 = Venue.create!(name: "betahaus",
  overview: "betahaus in Berlin is not just a coworking space; it's a lifestyle. This innovative hub balances work and play, providing a stimulating environment for creative minds. Join a community where ideas flow freely, fostering growth, innovation, and professional connections.",
  address: "Rudi-Dutschke-Straße 23, 10969 Berlin",
  image_urls: ["https://lh3.googleusercontent.com/p/AF1QipMF7ZT-a5V0BIgu3ZvstuLKHj9ZFOlOvQt18Zge=s1360-w1360-h1020", "https://lh3.googleusercontent.com/p/AF1QipM45NGO6qXHOpuOeK4TexjoZOFS22qGfPPEjpOx=s1360-w1360-h1020", "https://lh3.googleusercontent.com/p/AF1QipNEYDnoByS7LQJUqJXDB9zmW0nZQeGQJ4JsSf1K=s1360-w1360-h1020"],
  wifi_speed: 132,
  capacity: 10,
  user: anna)
venue3 = Venue.create!(name: "Denizen Eiswerk",
  overview: "Experience a unique coworking blend at Denizen Eiswerk in Berlin, where practicality meets creative charm. This space invites you to work surrounded by inspiration, offering a distinctive atmosphere that puts your ideas in the spotlight.",
  address: "Köpenicker Str. 40, 10179 Berlin",
  image_urls: ["https://lh3.googleusercontent.com/p/AF1QipOLZQx718ZhjSmJ_DdzQiNqnjfmrphz9TDB3Csx=s1360-w1360-h1020", "https://lh3.googleusercontent.com/p/AF1QipML0YLHcy146sIA-ehoaslQ2MXXgUcwf15YM--x=s1360-w1360-h1020", "https://lh3.googleusercontent.com/p/AF1QipOWWxtDSjepQQrchdhqRLfL6b9koqdcniH2QA28=s1360-w1360-h1020"],
  wifi_speed: 349,
  capacity: 4,
  user: anna)
venue4 = Venue.create!(name: "Techspace X-Berg",
  overview: "Tech enthusiasts, welcome to Techspace Kreuzberg – a cutting-edge coworking experience in Berlin. Designed for innovation, this space provides state-of-the-art facilities and a tech-driven community, where collaboration meets technology for boundless productivity.",
  address: "Lobeckstraße 36-40, 10969 Berlin",
  image_urls: ["https://lh3.googleusercontent.com/p/AF1QipP7DMZQ7WOVFkbpvBeBJ99e1sYP7E9kb7psK3EL=s1360-w1360-h1020", "https://lh3.googleusercontent.com/p/AF1QipMZH_o_gRW4uBA__b2YRmubM6rH9EVmHT-gEzwT=s1360-w1360-h1020", "https://lh3.googleusercontent.com/p/AF1QipMi8ZdXRt6aN3sPsnW5ePVYS5iTqB2gBbTuLGJE=s1360-w1360-h1020", "https://lh3.googleusercontent.com/p/AF1QipO88YKLk-2rxG-ldE9axNvUPVohkLFO1-Wu2830=s1360-w1360-h1020"],
  wifi_speed: 322,
  capacity: 36,
  user: bernardo)
venue5 = Venue.create!(name: "Soho House",
  overview: "Soho House in Berlin is where luxury meets productivity. This coworking space is about embracing a sophisticated lifestyle while offering an exclusive setting for work. From private offices to communal areas, it's a fusion of elegance and innovation.",
  address: "Torstraße 1, 10119 Berlin",
  image_urls: ["https://lh3.googleusercontent.com/p/AF1QipN9_0pE9kEKvEddJr48QZ8oiuqJSW14THRf3eUH=s1360-w1360-h1020", "https://res.cloudinary.com/soho-house/image/upload/f_auto,q_auto,fl_progressive:steep,w_800/t_dc_base/sitecore-prod/images/dotcom-sites/house-pages/berlin/10-may-update/03_berlin_update_43.jpg", "https://res.cloudinary.com/soho-house/image/upload/f_auto,q_auto,fl_progressive:steep,w_800/t_dc_base/sitecore-prod/images/dotcom-sites/house-pages/berlin/2023-house-page-update/07_berlin_housepage_43.jpg"],
  wifi_speed: 209,
  capacity: 28,
  user: bernardo)
venue6 = Venue.create!(name: "Sir Savigny",
  overview: "Sir Savigny in Berlin is not just a hotel; it's a curated elegance experience. With modern design and classic charm, this accommodation offers a sophisticated haven for those who appreciate the finer things in life.",
  address: "Kantstraße 144, 10623 Berlin",
  image_urls: ["https://www.sirhotels.com/media/images/sir-savigny-berlin-public-spaces_.2e16d0ba.fill-1710x966.jpg", "https://cf.bstatic.com/xdata/images/hotel/max1024x768/83995735.jpg?k=6827b8824390a2a4b6dbb2c25865117505db8c111837ae43824320c98f464d64&o=&hp=1", "https://media.cntraveler.com/photos/5b916decc65ac82d277946cd/16:9/w_2560,c_limit/Sir-Savigny-Hotel_StevevHerud_2018_Sir-Savigny-image-credit--Steve-Herud-(8).jpg"],
  wifi_speed: 92,
  capacity: 8,
  user: franz)
venue7 = Venue.create!(name: "Student Hotel",
  overview: "The Student Hotel in Berlin redefines accommodation, creating a vibrant community for students, professionals, and travelers. With modern amenities and a dynamic atmosphere, it's a home away from home, whether for a short visit or an extended stay.",
  address: "Alexanderstraße 40, 10179 Berlin",
  image_urls: ["https://masquespacio.com/wp-content/uploads/2022/01/The-Student-Hotel-Berlin-Masquespacio-Gregory-Abbate-05.jpeg", "https://images.squarespace-cdn.com/content/v1/598b56ce1e5b6cbabca9322f/1537212073286-64KLRJUNOI4GE40BR6T7/15The-Student-Hotel-Campus-Barcelona-Masquespacio.jpg", "https://masquespacio.com/wp-content/uploads/2022/01/The-Student-Hotel-Berlin-Masquespacio-Gregory-Abbate-10.jpeg"],
  wifi_speed: 189,
  capacity: 6,
  user: franz)
venue8 = Venue.create!(name: "25h Hotel",
  overview: "Experience the unique charm of 25h Hotel in Berlin, where each room tells a story. Beyond conventional accommodation, this hotel offers a journey through creativity and design, providing a delightful surprise in every detail.",
  address: "Budapester Str. 40, 10787 Berlin",
  image_urls: ["https://www.visitberlin.de/system/files/styles/visitberlin_hero_visitberlin_desktop_2x/private/image/25hours_075_c_visitBerlin_Mo_Wuestenhagen_web.jpg?h=1c9b88c9&itok=cg5qKpQq", "https://www.top10berlin.de/sites/top10berlin.de/files/styles/juicebox/public/location/slider/2014/06/02/fullsize_25h_bikini_berlin_betreiber_1.jpg?itok=Rs8EDU1M", "https://cf.bstatic.com/xdata/images/hotel/max1024x768/34271668.jpg?k=b1d53875c40cbbc96aa9853f5057354253bf4d75468affb7c6c2cb1ea45e214d&o=&hp=1"],
  wifi_speed: 402,
  capacity: 15,
  user: gio)
venue9 = Venue.create!(name: "Katerschmaus",
  overview: "Katerschmaus in Berlin is where gastronomy becomes an art form. This restaurant celebrates flavors and creativity in a vibrant atmosphere. From a menu inspired by local ingredients to eclectic ambiance, it offers a culinary experience that transcends the ordinary.",
  address: "Holzmarktstraße 25, 10243 Berlin",
  image_urls: ["https://www.tagesspiegel.de/berlin/images/fame/alternates/BASE_16_9_W1400/fame.jpeg", "https://lh3.googleusercontent.com/p/AF1QipOUOnM3Dc2gIM4wVTJe-lCd3nwBDURbZRWWf4O0=s1360-w1360-h1020", "https://lh3.googleusercontent.com/p/AF1QipNowcFPXbqhtRVZm_GCrWdoGbpJyUwBTQeOt0EI=s1360-w1360-h1020"],
  wifi_speed: 221,
  capacity: 20,
  user: gio)
venue10 = Venue.create!(name: "Le Wagon",
  overview: "The best co-working space and coding bootcamp in the world, located in the center of Berlin." ,
  address: "Rudi-Dutschke-Straße 24, 10969 Berlin" ,
  image_urls: ["https://www-img.lewagon.com/RLNlA7mORGbQY1DrnTJMBV7xjA72zogPnYM5cxoyWhk/rs:fill:640:800/plain/s3://wagon-www/qfui9261cqngt9kng40odff38tpf", "https://www-img.lewagon.com/Unz9ovGCkebthp5xxzjg6W2YyAroXsJ3qagKetfzhik/rs:fill:640:800/plain/s3://wagon-www/cpwcvvsi37o9mqw4s2yf99x249wd","https://www-img.lewagon.com/CL9kC4H3jfaXBEvd2LGjmwHYu9-JFOhVxUjGydfbwX0/rs:fill:640:800/plain/s3://wagon-www/v6e4fzb09yd2fxub58yp75qw2ymf","https://www-img.lewagon.com/FpmofsLsNovm-osQakwtQa5zcWkTxnGOaPvroL2svQ0/rs:fill:640:800/plain/s3://wagon-www/66f3sqxjcflq0rhrfp7rlf2yrhbr","https://www-img.lewagon.com/P4MfIR0Azh0RDie7_OIlfJ9_PFIE8TKFAb2Iv2LZWlI/rs:fill:640:800/plain/s3://wagon-www/lkavttmjm5kn0kpqsbvm0rt1weua"],
  wifi_speed: 415,
  capacity: 18,
  user: emma
)

# Seed opening hours for Venue 1
OpeningHour.create(day: 0, open_time: '10:00:00', closing_time: '18:00:00', venue: venue1)
OpeningHour.create(day: 1, open_time: '09:00:00', closing_time: '17:00:00', venue: venue1)
OpeningHour.create(day: 2, open_time: '10:00:00', closing_time: '18:00:00', venue: venue1)
OpeningHour.create(day: 3, open_time: '10:00:00', closing_time: '18:00:00', venue: venue1)
OpeningHour.create(day: 4, open_time: '10:00:00', closing_time: '18:00:00', venue: venue1)
OpeningHour.create(day: 5, open_time: '10:00:00', closing_time: '18:00:00', venue: venue1)
OpeningHour.create(day: 6, open_time: '10:00:00', closing_time: '18:00:00', venue: venue1)


# Seed opening hours for Venue 2
OpeningHour.create(day: 0, open_time: '10:00:00', closing_time: '16:00:00', venue: venue2)
OpeningHour.create(day: 1, open_time: '09:00:00', closing_time: '17:00:00', venue: venue2)
OpeningHour.create(day: 2, open_time: '10:00:00', closing_time: '18:00:00', venue: venue2)
OpeningHour.create(day: 3, open_time: '10:00:00', closing_time: '18:00:00', venue: venue2)
OpeningHour.create(day: 4, open_time: '10:00:00', closing_time: '19:00:00', venue: venue2)
OpeningHour.create(day: 5, open_time: '10:00:00', closing_time: '18:00:00', venue: venue2)
OpeningHour.create(day: 6, open_time: '10:00:00', closing_time: '19:00:00', venue: venue2)

# Seed opening hours for Venue 3
OpeningHour.create(day: 0, open_time: '10:00:00', closing_time: '16:00:00', venue: venue3)
OpeningHour.create(day: 1, open_time: '09:00:00', closing_time: '17:00:00', venue: venue3)
OpeningHour.create(day: 2, open_time: '10:00:00', closing_time: '18:00:00', venue: venue3)
OpeningHour.create(day: 3, open_time: '10:00:00', closing_time: '18:00:00', venue: venue3)
OpeningHour.create(day: 4, open_time: '10:00:00', closing_time: '19:00:00', venue: venue3)
OpeningHour.create(day: 5, open_time: '10:00:00', closing_time: '18:00:00', venue: venue3)
OpeningHour.create(day: 6, open_time: '10:00:00', closing_time: '19:00:00', venue: venue3)

# Seed opening hours for Venue 4
OpeningHour.create(day: 0, open_time: '10:00:00', closing_time: '16:00:00', venue: venue4)
OpeningHour.create(day: 1, open_time: '09:00:00', closing_time: '17:00:00', venue: venue4)
OpeningHour.create(day: 2, open_time: '10:00:00', closing_time: '18:00:00', venue: venue4)
OpeningHour.create(day: 3, open_time: '10:00:00', closing_time: '18:00:00', venue: venue4)
OpeningHour.create(day: 4, open_time: '10:00:00', closing_time: '19:00:00', venue: venue4)
OpeningHour.create(day: 5, open_time: '10:00:00', closing_time: '18:00:00', venue: venue4)
OpeningHour.create(day: 6, open_time: '10:00:00', closing_time: '19:00:00', venue: venue4)

# Seed opening hours for Venue 5
OpeningHour.create(day: 0, open_time: '10:00:00', closing_time: '16:00:00', venue: venue5)
OpeningHour.create(day: 1, open_time: '09:00:00', closing_time: '17:00:00', venue: venue5)
OpeningHour.create(day: 2, open_time: '10:00:00', closing_time: '18:00:00', venue: venue5)
OpeningHour.create(day: 3, open_time: '10:00:00', closing_time: '18:00:00', venue: venue5)
OpeningHour.create(day: 4, open_time: '10:00:00', closing_time: '19:00:00', venue: venue5)
OpeningHour.create(day: 5, open_time: '10:00:00', closing_time: '18:00:00', venue: venue5)
OpeningHour.create(day: 6, open_time: '10:00:00', closing_time: '19:00:00', venue: venue5)

# Seed opening hours for Venue 6
OpeningHour.create(day: 0, open_time: '10:00:00', closing_time: '16:00:00', venue: venue6)
OpeningHour.create(day: 1, open_time: '09:00:00', closing_time: '17:00:00', venue: venue6)
OpeningHour.create(day: 2, open_time: '10:00:00', closing_time: '18:00:00', venue: venue6)
OpeningHour.create(day: 3, open_time: '10:00:00', closing_time: '18:00:00', venue: venue6)
OpeningHour.create(day: 4, open_time: '10:00:00', closing_time: '19:00:00', venue: venue6)
OpeningHour.create(day: 5, open_time: '10:00:00', closing_time: '18:00:00', venue: venue6)
OpeningHour.create(day: 6, open_time: '10:00:00', closing_time: '19:00:00', venue: venue6)

# Seed opening hours for Venue 7
OpeningHour.create(day: 0, open_time: '10:00:00', closing_time: '16:00:00', venue: venue7)
OpeningHour.create(day: 1, open_time: '09:00:00', closing_time: '17:00:00', venue: venue7)
OpeningHour.create(day: 2, open_time: '10:00:00', closing_time: '18:00:00', venue: venue7)
OpeningHour.create(day: 3, open_time: '10:00:00', closing_time: '18:00:00', venue: venue7)
OpeningHour.create(day: 4, open_time: '10:00:00', closing_time: '19:00:00', venue: venue7)
OpeningHour.create(day: 5, open_time: '10:00:00', closing_time: '18:00:00', venue: venue7)
OpeningHour.create(day: 6, open_time: '10:00:00', closing_time: '19:00:00', venue: venue7)

# Seed opening hours for Venue 8
OpeningHour.create(day: 0, open_time: '10:00:00', closing_time: '16:00:00', venue: venue8)
OpeningHour.create(day: 1, open_time: '09:00:00', closing_time: '17:00:00', venue: venue8)
OpeningHour.create(day: 2, open_time: '10:00:00', closing_time: '18:00:00', venue: venue8)
OpeningHour.create(day: 3, open_time: '10:00:00', closing_time: '18:00:00', venue: venue8)
OpeningHour.create(day: 4, open_time: '10:00:00', closing_time: '19:00:00', venue: venue8)
OpeningHour.create(day: 5, open_time: '10:00:00', closing_time: '18:00:00', venue: venue8)
OpeningHour.create(day: 6, open_time: '10:00:00', closing_time: '19:00:00', venue: venue8)

# Seed opening hours for Venue 9
OpeningHour.create(day: 0, open_time: '10:00:00', closing_time: '16:00:00', venue: venue9)
OpeningHour.create(day: 1, open_time: '09:00:00', closing_time: '17:00:00', venue: venue9)
OpeningHour.create(day: 2, open_time: '10:00:00', closing_time: '18:00:00', venue: venue9)
OpeningHour.create(day: 3, open_time: '10:00:00', closing_time: '18:00:00', venue: venue9)
OpeningHour.create(day: 4, open_time: '10:00:00', closing_time: '19:00:00', venue: venue9)
OpeningHour.create(day: 5, open_time: '10:00:00', closing_time: '18:00:00', venue: venue9)
OpeningHour.create(day: 6, open_time: '10:00:00', closing_time: '19:00:00', venue: venue9)

# Seed opening hours for Venue 10
OpeningHour.create(day: 0, open_time: '10:00:00', closing_time: '16:00:00', venue: venue10)
OpeningHour.create(day: 1, open_time: '09:00:00', closing_time: '17:00:00', venue: venue10)
OpeningHour.create(day: 2, open_time: '10:00:00', closing_time: '18:00:00', venue: venue10)
OpeningHour.create(day: 3, open_time: '10:00:00', closing_time: '18:00:00', venue: venue10)
OpeningHour.create(day: 4, open_time: '10:00:00', closing_time: '19:00:00', venue: venue10)
OpeningHour.create(day: 5, open_time: '10:00:00', closing_time: '18:00:00', venue: venue10)
OpeningHour.create(day: 6, open_time: '10:00:00', closing_time: '19:00:00', venue: venue10)

# seeding bookings
puts("4. Seeding Bookings...")

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
  "2024-01-15",
  "2024-02-28",
  "2024-03-10",
  "2024-04-22",
  "2023-12-14",
  "2023-06-18",
  "2023-07-01",
  "2023-08-14",
  "2023-09-27",
]


users = [anna, gio, bernardo, franz, tony_stark, emma, adam, lucas, josh, david]

Booking.create!(booking_date: booking_dates[0]  , venue: venue1, user: users[0])
Booking.create!(booking_date: booking_dates[1]  , venue: venue1, user: users[1])
Booking.create!(booking_date: booking_dates[3]  , venue: venue2, user: users[3])
Booking.create!(booking_date: booking_dates[4]  , venue: venue2, user: users[4])
Booking.create!(booking_date: booking_dates[5]  , venue: venue2, user: users[5])
Booking.create!(booking_date: booking_dates[6]  , venue: venue3, user: users[6])
Booking.create!(booking_date: booking_dates[7]  , venue: venue3, user: users[7])
Booking.create!(booking_date: booking_dates[8]  , venue: venue3, user: users[8])
Booking.create!(booking_date: booking_dates[6]  , venue: venue4, user: users[9])
Booking.create!(booking_date: booking_dates[0]  , venue: venue4, user: users[0])
Booking.create!(booking_date: booking_dates[1]  , venue: venue4, user: users[1])
Booking.create!(booking_date: booking_dates[2]  , venue: venue5, user: users[2])
Booking.create!(booking_date: booking_dates[3]  , venue: venue5, user: users[3])
Booking.create!(booking_date: booking_dates[4]  , venue: venue5, user: users[4])
Booking.create!(booking_date: booking_dates[5]  , venue: venue6, user: users[5])
Booking.create!(booking_date: booking_dates[6]  , venue: venue6, user: users[6])
Booking.create!(booking_date: booking_dates[7]  , venue: venue6, user: users[7])
Booking.create!(booking_date: booking_dates[8]  , venue: venue7, user: users[8])
Booking.create!(booking_date: booking_dates[6]  , venue: venue7, user: users[9])
Booking.create!(booking_date: booking_dates[0]  , venue: venue7, user: users[0])
Booking.create!(booking_date: booking_dates[1]  , venue: venue8, user: users[1])
Booking.create!(booking_date: booking_dates[2]  , venue: venue8, user: users[4])
Booking.create!(booking_date: booking_dates[3]  , venue: venue9, user: users[5])
Booking.create!(booking_date: booking_dates[4]  , venue: venue9, user: users[6])
Booking.create!(booking_date: booking_dates[5]  , venue: venue9, user: users[7])
Booking.create!(booking_date: booking_dates[6]  , venue: venue10, user: users[8])
Booking.create!(booking_date: booking_dates[7]  , venue: venue10, user: users[9])

puts("5. Seeding Reviews...")

Review.create!(
  content: "I had an incredible time at this place! The atmosphere was enchanting, and the staff made me feel like royalty.",
  rating: 5,
  booking_id: 1,
  user: anna
)

Review.create!(
  content: "You would love this spot! The service was top-notch, and the views were breathtaking.",
  rating: 5,
  booking_id: 2,
  user: gio
)

Review.create!(
  content: "The experience here was alright. The place is decent, but I expected a bit more.",
  rating: 5,
  booking_id: 4,
  user: franz
)

Review.create!(
  content: "This place is truly a marvel. The architecture is stunning, and the amenities are top-notch.",
  rating: 4,
  booking_id: 5,
  user: tony_stark
)

Review.create!(
  content: "I found your next favorite spot! The decor is stylish, and the staff is super friendly.",
  rating: 1,
  booking_id: 6,
  user: emma
)

Review.create!(
  content: "This place is a gem. The attention to detail is impressive, and the overall experience was memorable.",
  rating: 3,
  booking_id: 7,
  user: adam
)

Review.create!(
  content: "The atmosphere here is perfect for a romantic evening. You and your partner would love it.",
  rating: 4,
  booking_id: 8,
  user: lucas
)

Review.create!(
  content: "If you're into cozy places, this one's a winner. The ambiance is warm, and the staff is welcoming.",
  rating: 4,
  booking_id: 9,
  user: josh
)

Review.create!(
  content: "The food here is fantastic! If you're a foodie, this spot should be on your list.",
  rating: 5,
  booking_id: 10,
  user: david
)

Review.create!(
  content: "You'd love the artistic vibe of this place. The decor is unique, and the staff is accommodating.",
  rating: 3,
  booking_id: 11,
  user: emma
)

Review.create!(
  content: "If you enjoy a tranquil atmosphere, this spot is perfect. It's a peaceful retreat with great amenities.",
  rating: 2,
  booking_id: 12,
  user: adam
)

Review.create!(
  content: "The views from this place are breathtaking. It's an ideal location for nature lovers and photographers.",
  rating: 1,
  booking_id: 13,
  user: lucas
)

Review.create!(
  content: "This place has a lively atmosphere. Perfect for socializing and enjoying a good time with friends.",
  rating: 4,
  booking_id: 14,
  user: josh
)

Review.create!(
  content: "The staff here is exceptional. They went above and beyond to ensure my stay was comfortable and enjoyable.",
  rating: 3,
  booking_id: 15,
  user: david
)

Review.create!(
  content: "I found this place to be a delightful surprise. The attention to detail and hospitality are commendable.",
  rating: 4,
  booking_id: 16,
  user: anna
)

Review.create!(
  content: "If you're a fan of modern architecture, this spot will impress you. The design is sleek and stylish.",
  rating: 2,
  booking_id: 17,
  user: gio
)

Review.create!(
  content: "I had a mixed experience. The food was excellent, but some aspects of the service fell short.",
  rating: 1,
  booking_id: 18,
  user: bernardo
)

Review.create!(
  content: "The ambiance here is cozy and inviting. It's a great place for a laid-back and enjoyable evening.",
  rating: 4,
  booking_id: 19,
  user: franz
)

Review.create!(
  content: "This place is as high-tech as it gets! The amenities are top-notch, and the service is futuristic.",
  rating: 5,
  booking_id: 20,
  user: tony_stark
)

Review.create!(
  content: "If you appreciate attention to detail, you'll love this place. Every aspect is meticulously crafted.",
  rating: 2,
  booking_id: 21,
  user: emma
)

Review.create!(
  content: "The staff here is incredibly friendly. They make you feel like you're part of a close-knit community.",
  rating: 3,
  booking_id: 22,
  user: adam
)

Review.create!(
  content: "if you enjoy being surrounded by nature, this spot is a haven. The greenery is refreshing and calming.",
  rating: 2,
  booking_id: 23,
  user: lucas
)

Review.create!(
  content: "The overall experience here was positive. The atmosphere is vibrant, and there's always something happening.",
  rating: 4,
  booking_id: 24,
  user: josh
)

Review.create!(
  content: "The architecture of this place is a work of art. It's a visual delight from every angle.",
  rating: 2,
  booking_id: 25,
  user: david
)

Review.create!(
  content: "Prepare to be impressed! This place is a technological marvel.",
  rating: 5,
  booking_id: 26,
  user: tony_stark
)

Review.create!(
  content: "This place is a hidden gem. A fantastic rails environment with ruby scripts all over the place.",
  rating: 5,
  booking_id: 27,
  user: david
)


puts("6. Seeding completed")
