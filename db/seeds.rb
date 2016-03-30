# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(first_name: 'User', last_name: 'Testerson', email: 'user@testuser.test', blurb: 'blurb blurb blurb blurb blurb', profile_pic: '/assets/boy.png')

band_list = [
  [ "Future Islands", "Rock", "Maryland", "google.com", "bio bio bio bio bio bio bio bio", "/assets/boy.png", 1, "Band" ],
  [ "Boy", "Rock", "Germany", "google.com", "bio bio bio bio bio bio bio bio", "/assets/boy.png", 2, "Band" ],
  [ "The Kickback", "Pop", "Illinois", "google.com", "bio bio bio bio bio bio bio bio", "/assets/boy.png", 3, "Band" ],
  [ "Jack Hotel", "Pop", "Nebraska", "google.com", "bio bio bio bio bio bio bio bio", "/assets/boy.png", 4, "Band" ],
  [ "Twinsmith", "Rock", "Nebraska", "google.com", "bio bio bio bio bio bio bio bio", "/assets/boy.png", 5, "Band" ],
  [ "AZP", "Folk", "Nebraska", "google.com", "bio bio bio bio bio bio bio bio", "/assets/boy.png", 6, "Band" ]
]

band_list.each do |name, genre, origin, website, bio, image, headline_order|
  Band.create( name: name, genre: genre, origin: origin, website: website, bio: bio, image: image, headline_order: headline_order)
end

comedian_list = [
  [ "Hank Misterson", "Nebraska", "google.com", "bio bio bio bio bio bio bio bio", "/assets/boy.png", 1],
  [ "Larissa Mursterson", "Germany", "google.com", "bio bio bio bio bio bio bio bio", "/assets/boy.png", 2],
  [ "Helen Masterson", "Illinois", "google.com", "bio bio bio bio bio bio bio bio", "/assets/boy.png", 3]
]
comedian_list.each do |name, origin, website, bio, image, headline_order|
  Band.create( name: name, origin: origin, website: website, bio: bio, image: image, headline_order: headline_order)
end

venue_list = [
  [ "The Bourbon", "125 N First Street", "bio bio bio bio bio bio bio bio", "/assets/Bourbon_Theater.png", 40.8134, 96.7006],
  [ "Duffy's Tavern", "125 N Second Street", "bio bio bio bio bio bio bio bio", "/assets/Bourbon_Theater.png", 40.8138, 96.7007],
  [ "Yia Yia's Pizza", "125 N Third Street", "bio bio bio bio bio bio bio bio", "/assets/Bourbon_Theater.png", 40.8140, 96.7008]
]
venue_list.each do |name, address, info, img, coordinates_latitude, coordinates_longitude|
  Venue.create(name: name, address: address, info: info, img: img, coordinates_latitude: coordinates_latitude, coordinates_longitude: coordinates_longitude)
end

feature_list = [
  ["Test Article 1: A Long Titled Article", 1, "content content content content content content content content content content content content content content content content content content content content content content content content content", "/assets/beutler.jpg",2016-05-26 21:55:19],
  ["Test Article 2", 1, "content content content content content content content content content content content content content content content content content content content content content content content content content", "/assets/beutler.jpg",2016-08-26 21:55:19],
  ["Test Article 3 A Very Fascinating Article", 1, "content content content content content content content content content content content content content content content content content content content content content content content content content", "/assets/beutler.jpg",2016-05-15 21:55:19]
]
feature_list.each do |title, user_id, article_content, image, publish_date_time|
  Feature.create(title: title, user_id: user_id, article_content: article_content, image: image, publish_date_time: publish_date_time)
end

faq_list = [
  ["Test FAQ 1 Question Question", 1, "content content content content content content content content content content content content content content content content content content content content content content content content content",2016-05-26 21:55:19],
  ["Test FAQ 2 Question Question Question Question", 1, "content content content content content content content content content content content content content content content content content content content content content content content content content",2016-08-26 21:55:19],
  ["Test FAQ 3 Question Question", 1, "content content content content content content content content content content content content content content content content content content content content content content content content content",2016-05-15 21:55:19]
]
faq_list.each do |title, user_id, article_content, publish_date_time|
  Faq.create(title: title, user_id: user_id, article_content: article_content, publish_date_time: publish_date_time)
end

visitor_list = [
  ["Test Article 1: A Long Titled Article", 1, "content content content content content content content content content content content content content content content content content content content content content content content content content", "/assets/beutler.jpg",2016-05-26 21:55:19],
  ["Test Article 2", 1, "content content content content content content content content content content content content content content content content content content content content content content content content content", "/assets/beutler.jpg",2016-08-26 21:55:19],
  ["Test Article 3 A Very Fascinating Article", 1, "content content content content content content content content content content content content content content content content content content content content content content content content content", "/assets/beutler.jpg",2016-05-15 21:55:19]
]
visitor_list.each do |title, user_id, article_content, image, publish_date_time|
  Visitor.create(title: title, user_id: user_id, article_content: article_content, image: image, publish_date_time: publish_date_time)
end

About.create(title: "About", user_id: 1, article_content: "content content content content content content content content content content content content content content content content content content content content content content content content content",2016-05-26 21:55:19)










