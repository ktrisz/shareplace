# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


cnt = 1
10.times do

  City.create(
  name: "sample#{cnt}",
  person: "sample#{cnt}name",
  email: "sample#{cnt}@sample#{cnt}.com",
  phone: "+81-90-#{cnt}-#{cnt}"
  )

  Area.create(
    name: "sample#{cnt}",
    city_id: cnt
    )


  Post.create(
    name:"sample#{cnt}",
    text:"sample#{cnt}",
    tag:"#{cnt}",
    address:"",
    phonenumber:"8#{cnt}-90-1234-5643",
    URL: "google.com",
    area_id:cnt,
    city_id:cnt
    )

  cnt+= 1
end
