# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


admin = User.create! do |u|
	u.email = 'hello@michaelgordon.io'
	u.password = 'Cordoba15'
	u.password_confirmation = 'Cordoba15'
	u.admin = true
end