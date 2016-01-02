# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# csv.open |f| do
#
#  u = User.new();
#  u.name =
#      u.passw = f.system
# u.save
# end
u = User.new()
u.email = "Fee1Mix@163.com"
u.stuName = "刘昆"
u.stuId = "13108319"
u.password = u.stuId
u.password_confirmation = u.stuId
u.save
