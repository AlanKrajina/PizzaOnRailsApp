# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Meat.create(name: "Ham")
Meat.create(name: "Chicken")
Meat.create(name: "Pepperoni")
Meat.create(name: "Sausage")
Meat.create(name: "Bacon")
Meat.create(name: "Prosciutto")

Cheese.create(name: "Mozzarella")
Cheese.create(name: "Provolone")
Cheese.create(name: "Cheddar")
Cheese.create(name: "Parmesan")
Cheese.create(name: "Feta")
Cheese.create(name: "Gorgonzola")

Topping.create(name: "Mushrooms")
Topping.create(name: "Onions")
Topping.create(name: "Peppers")
Topping.create(name: "Broccoli")
Topping.create(name: "Fresh tomatoes")
Topping.create(name: "Black olive")
Topping.create(name: "Corn")
Topping.create(name: "Ricotta")

Dip.create(name: "Ketchup")
Dip.create(name: "BBQ sauce")
Dip.create(name: "Sour cream and chive")
Dip.create(name: "Garlic and herb")
Dip.create(name: "Sweet chilli")

Drink.create(name: "Red bull")
Drink.create(name: "Still water")
Drink.create(name: "Sparkling water")
Drink.create(name: "Coke")
Drink.create(name: "Diet coke")
Drink.create(name: "Fanta orange")
Drink.create(name: "7up")

Rating.create(stars: "*1", comment: "Terrible")
Rating.create(stars: "*2", comment: "Mediocre")
Rating.create(stars: "*3", comment: "Good"}
Rating.create(stars: "*4", comment: "Excellent}")
Rating.create(stars: "*5", comment: "Superb")