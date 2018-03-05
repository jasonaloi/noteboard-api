# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


notes = Note.create(
	[
		{
			title: "Steven P Jobs",
			note: "The ones who are crazy enough to think that they can change the world are the ones who do."
		},
		{
			title: "David Allen",
			note: "You can do anything, but not everything."
		},
		{
			title: "Paul Arden",
			note: "Do not seek praise. Seek criticism."
		}
  ])
