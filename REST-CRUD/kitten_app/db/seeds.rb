# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Kitten.destroy_all
Person.destroy_all
Playdate.destroy_all

kitten1 = Kitten.create(name: "Socrates",age: 1, breed: "shorthair?", personality: "Rambunctious" )
kitten2 = Kitten.create(name: "Jack",age: 9, breed: "Persian", personality: "Grump" )
kitten3 = Kitten.create(name: "Hikari",age: 8, breed: "Siamese Shorthair", personality: "Squawky" )
kitten4 = Kitten.create(name: "Eli",age: 10, breed: "Tuxedo", personality: "Mellow" )



peep1 = Person.create(name: "Raul", age: 27, height:162)
peep2 = Person.create(name: "Dane", age: 29, height:177)
peep3 = Person.create(name: "Angelo", age: 55, height:150)

# t.integer :person_id
# t.integer :kitten_id
# t.integer :length_of_time
# t.string :date
Playdate.create(person_id: peep1.id, kitten_id: kitten1.id,length_of_time:100, date:"12-8-20" )
Playdate.create(person_id: peep3.id, kitten_id: kitten4.id,length_of_time:50, date:"12-9-20" )
Playdate.create(person_id: peep1.id, kitten_id: kitten1.id,length_of_time:75, date:"12-9-20" )
