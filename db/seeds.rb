# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# adding users 

users = User.create([{name: "admin", password:
    "project1", admin: true}, {name: "nutritionist", password:
    "project1", admin: false}])

# adding restaurants 

Restaurant.create(name: 'CMUQ Cafeteria')
Restaurant.create(name: 'VCUQ Cafeteria')
Restaurant.create(name: 'WCMC Cafeteria')
Restaurant.create(name: 'LAS Cafeteria')
Restaurant.create(name: 'HBKU Cafeteria')
Restaurant.create(name: 'SHC male Cafeteria')
Restaurant.create(name: 'SHC female Cafeteria')
Restaurant.create(name: 'GTU Cafeteria')


# adding mealtimes 
MealTime.create(time: 'Breakfast')
MealTime.create(time: 'Lunch')
MealTime.create(time: 'Dinner')


# adding types 
Type.create(name: 'soup')
Type.create(name: 'main dishes')











