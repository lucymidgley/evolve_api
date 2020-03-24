# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

## CATEGORIES

puts "Re-creating users ..."
User.destroy_all

user1 = User.create!({
  name:  'Jane Eyre',
  email: 'jane@jane.com',
  username: 'jane92',
  password: 'password',
  password_confirmation: 'password',
  profile_pic: 'random_pic1'
})
user2 = User.create!({
  name:  'Harry Potter',
  email: 'harry@harry.com',
  username: 'theChosenOne',
  password: 'password',
  password_confirmation: 'password',
  profile_pic: 'random_pic2'
})
user3 = User.create!({
  name:  'Oliver Twist',
  email: 'oliver@oliver.com',
  username: 'someMorePlease',
  password: 'password',
  password_confirmation: 'password',
  profile_pic: 'random_pic3'
})

## GAMES

puts "Re-creating games ..."

Game.destroy_all

game1 = Game.create!({
  user_id: user1.id,
  name:  'myPetri',
  playtime: 80,
  num_of_orgs: 545,
  highest_score: rand(2000)
})
game2 = Game.create!({
  user_id: user2.id,
  name:  'myPetri2',
  num_of_orgs: 245,
  highest_score: rand(2000),
  playtime: 50
})
game3 = Game.create!({
  user_id: user3.id,
  name:  'myPetri3',
  num_of_orgs: 701,
  highest_score: rand(2000),
  playtime: 100
})
game4 = Game.create!({
  user_id: user2.id,
  name:  'myPetri4',
  num_of_orgs: 445,
  highest_score: rand(2000),
  playtime: 85
})

