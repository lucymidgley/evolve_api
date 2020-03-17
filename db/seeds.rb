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
  temperature: 20,
  screen_capture: 'something',
  playtime: 80
})
game2 = Game.create!({
  user_id: user2.id,
  name:  'myPetri2',
  temperature: 10,
  screen_capture: 'something else',
  playtime: 50
})
game3 = Game.create!({
  user_id: user3.id,
  name:  'myPetri3',
  temperature: 5,
  screen_capture: 'something new',
  playtime: 100
})

## FOODS
puts "Re-creating foods ..."

Food.destroy_all

food1 = Food.create!({
  name: 'mushy peas',
  energy: 10
})
food2 = Food.create!({
  name: 'chicken',
  energy: 50
})
food3 = Food.create!({
  name: 'chocolate',
  energy: 30
})
food4 = Food.create!({
  name: 'pasta',
  energy: 80
})
food5 = Food.create!({
  name: 'raspberries',
  energy: 10
})

## FOODS
puts "Re-creating food instances ..."

FoodInstance.destroy_all

FoodInstance.create!({
  game_id: game1.id,
  food_id: food1.id,
  x_coord: 222,
  y_coord: 444,
  energy_level: 10
})
FoodInstance.create!({
  game_id: game1.id,
  food_id: food1.id,
  x_coord: 222,
  y_coord: 444,
  energy_level: 10
})
FoodInstance.create!({
  game_id: game2.id,
  food_id: food3.id,
  x_coord: 11,
  y_coord: 499,
  energy_level: 30
})
FoodInstance.create!({
  game_id: game3.id,
  food_id: food4.id,
  x_coord: 677,
  y_coord: 334,
  energy_level: 55
})

## Organism
puts "Re-creating Organisms ..."

Organism.destroy_all

5.times do |n|
  Organism.create!(
  game_id: game1.id,
  x_coord: rand(600),
  y_coord: rand(600),
  size: rand(50),
  speed: rand(30),
  color: 'green',
  perception: rand(100),
  energy_level: rand(100),
  energy_efficiency: rand(40),
  max_energy: rand(30),
  max_size: 50,
  age: rand(100),
  reproductive_age: 500,
  life_span: 2500,
  offspring_capacity: rand(50),
  parent_1: "",
  parent_2: "",
  name: "Unit #{rand(30)}",
  predator: false,
  sex: rand(2)
)
end
5.times do |n|
  Organism.create!(
  game_id: game1.id,
  x_coord: rand(600),
  y_coord: rand(600),
  size: rand(50),
  speed: rand(30),
  color: 'blue',
  perception: rand(100),
  energy_level: rand(100),
  energy_efficiency: rand(40),
  max_energy: rand(30),
  max_size: 50,
  age: rand(100),
  reproductive_age: 500,
  life_span: 2500,
  offspring_capacity: rand(50),
  parent_1: "",
  parent_2: "",
  name: "Unit #{rand(30)}",
  predator: true,
  sex: rand(2)
)
end
5.times do |n|
  Organism.create!(
  game_id: game2.id,
  x_coord: rand(600),
  y_coord: rand(600),
  size: rand(50),
  speed: rand(30),
  color: 'red',
  perception: rand(100),
  energy_level: rand(100),
  energy_efficiency: rand(40),
  max_energy: rand(30),
  max_size: 50,
  age: rand(100),
  reproductive_age: 500,
  life_span: 2500,
  offspring_capacity: rand(50),
  parent_1: "",
  parent_2: "",
  name: "Unit #{rand(30)}",
  predator: false,
  sex: rand(2)
)
end
5.times do |n|
  Organism.create!(
  game_id: game2.id,
  x_coord: rand(600),
  y_coord: rand(600),
  size: rand(50),
  speed: rand(30),
  color: 'yellow',
  perception: rand(100),
  energy_level: rand(100),
  energy_efficiency: rand(40),
  max_energy: rand(30),
  max_size: 50,
  age: rand(100),
  reproductive_age: 500,
  life_span: 2500,
  offspring_capacity: rand(50),
  parent_1: "",
  parent_2: "",
  name: "Unit #{rand(30)}",
  predator: true,
  sex: rand(2)
)
end
5.times do |n|
  Organism.create!(
  game_id: game3.id,
  x_coord: rand(600),
  y_coord: rand(600),
  size: rand(50),
  speed: rand(30),
  color: 'blue',
  perception: rand(100),
  energy_level: rand(100),
  energy_efficiency: rand(40),
  max_energy: rand(30),
  max_size: 50,
  age: rand(100),
  reproductive_age: 500,
  life_span: 2500,
  offspring_capacity: rand(50),
  parent_1: "",
  parent_2: "",
  name: "Unit #{rand(30)}",
  predator: false,
  sex: rand(2)
)
end
5.times do |n|
  Organism.create!(
  game_id: game3.id,
  x_coord: rand(600),
  y_coord: rand(600),
  size: rand(50),
  speed: rand(30),
  color: 'black',
  perception: rand(100),
  energy_level: rand(100),
  energy_efficiency: rand(40),
  max_energy: rand(30),
  max_size: 50,
  age: rand(100),
  reproductive_age: 500,
  life_span: 2500,
  offspring_capacity: rand(50),
  parent_1: "",
  parent_2: "",
  name: "Unit #{rand(30)}",
  predator: true,
  sex: rand(2)
)
end