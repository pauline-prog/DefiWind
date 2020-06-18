# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Post.destroy_all

# puts "Creating post ..."

#   post = Post.new(
#     title: Faker::Food.dish,
#     description: Faker::Food.description,
#   	)
#   file = URI.open("https://www.windmag.com/media/D%C3%A9fi%20Wind/2018/jour4/JMC_5747.jpg")
#   post.photo.attach(io:file, filename:'avatar.png', content_type: 'img/png')
#   post.save!

# puts "Post created"

# Event.destroy_all

# puts "Creating events ..."

#   event = Event.new(
#     title: "Event1",
#     description: "Description de l'event 1",
#   	)
#   event.date = Time.new(2020, 11, 8, 11, 35)
#   file2 = URI.open("https://www.windmag.com/media/D%C3%A9fi%20Wind/2018/jour4/JMC_5747.jpg")
#   event.photo.attach(io:file2, filename:'avatar.png', content_type: 'img/png')
#   event.save!

#   event2 = Event.new(
#     title: "Event2",
#     description: "Description de l'event 2",
#     )
#   event2.date = Time.new(2020, 11, 8, 14, 45)
#   file3 = URI.open("https://www.windmag.com/media/D%C3%A9fi%20Wind/2018/jour4/JMC_5747.jpg")
#   event2.photo.attach(io:file3, filename:'avatar.png', content_type: 'img/png')
#   event2.save!

#   event3 = Event.new(
#     title: "Event3",
#     description: "Description de l'event 3",
#     )
#   event3.date = Time.new(2020, 11, 9, 10, 00)
#   file4 = URI.open("https://www.windmag.com/media/D%C3%A9fi%20Wind/2018/jour4/JMC_5747.jpg")
#   event3.photo.attach(io:file4, filename:'avatar.png', content_type: 'img/png')
#   event3.save!

# puts "Events created"

# puts "Creating position ..."

# Position.destroy_all

# Position.create!(
#   time: Time.new(03,20),
#   point: 24,
#   place: 34,
#   event: Event.find(25),
#   user: User.find(2)
#   )

# puts "Position created"

# puts "Creating admin user"

#   User.create!(
#     email: "admin@admin.fr",
#     first_name: "pauline",
#     last_name: "poize",
#     race_number: 108,
#     password: "password",
#     admin: true
#     )

# puts "Admin user created"
puts "Destroying friendgroups"

FriendGroup.destroy_all

puts "Friendgroups destroyed"

puts "Destroying positions"

Position.destroy_all

puts "Positions destroyed"
