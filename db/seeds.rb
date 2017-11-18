# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'
# u = User.new()
# u.email = "Fee1Mix@163.com"
# u.stuName = "刘昆"
# u.stuId = "13108319"
# u.password = u.stuId
# u.password_confirmation = u.stuId
# u.save
rows = CSV.read('./db/test.csv', 'rb:GB18030:UTF-8', headers: true, header_converters: :symbol, col_sep: ',' )
rows.each do |row|
  u = User.new
  u.stu_id = row[1]
  u.stu_iame = row[2]
  random = Random.new.rand(11111111..99999999).to_s
  u.random_pass = random
  u.password = random
  u.password_confirmation = random
  u.email = row[3]
  u.save
end
