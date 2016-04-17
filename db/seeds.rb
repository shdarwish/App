# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


users = User.create([{name: "admin", password:
    "project1", admin: true}, {name: "nut", password:
    "project1", admin: false}])

Restaurant.create(name: 'CMUQ')
Restaurant.create(name: 'VCUQ')

MealTime.create(time: 'Lunch')
MealTime.create(time: 'Dinner')
MealTime.create(time: 'Breakfast')

Type.create(name: 'salad')
Type.create(name: 'soup')
Type.create(name: 'drink')








