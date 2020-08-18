Category.destroy_all

Restaurant.destroy_all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




italian = Category.create(name:"Italian")
indian = Category.create(name:"Indian")
mexican = Category.create(name:"Mexican")
thai = Category.create(name:"Thai")
korean = Category.create(name:"korean")
japanese = Category.create(name:"japanese")
fast_food= Category.create(name:"Fast Food")
viatnamese = Category.create(name:"Viatnamese")
american = Category.create(name:"American")
chinese = Category.create(name:"Chinese")
bakery = Category.create(name:"Bakery")
deli = Category.create(name:"Deli")


36.times do 
    Restaurant.create(name: Faker::Restaurant.name, category_id: Category.all.sample.id)
end
puts "seeded"