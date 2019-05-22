puts "deleting the trades of the database..."
Trade.destroy_all

puts "deleting the parts of the database..."
Part.destroy_all

puts "deleting the users of the database..."
User.destroy_all

puts "generate new users....."
users_attributes = [
{
first_name: "Paul",
last_name: "Strunz",
email: "paul.strunz@test.com",
seller: true,
password: "123456",
address: "checkpoint charlie, berlin, germany",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558529421/user1_s2mh8z.jpg"
},

{
first_name: "Jan",
last_name: "Pannini",
email: "jan.pannini@test.com",
seller: true,
password: "123456",
address: "champ elyse, paris, france",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558529421/user4_vrifui.jpg"
},
{
first_name: "Mick",
last_name: "Thomson",
email: "mick.thomson@test.com",
seller: true,
password: "123456",
address: "time square, london, england",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558529421/user2_nhf0zt.jpg"
},
{
first_name: "Juerg",
last_name: "Schuplli",
email: "juerg.schuplli@test.com",
seller: true,
password: "123456",
address: "zurich, swisstzerland",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558529420/user3_vq26fx.jpg"
},
{
first_name: "Chan",
last_name: "Peng",
email: "chang.peng@test.com",
seller: false,
password: "123456",
address: " shangai, china",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558529420/user5_by1lv5.jpg"
}
]
# User.create!(users_attributes)

users_attributes.each do |user_info|
  u = User.new(user_info)
  u.remote_photo_url = user_info[:photo]
  u.save
end
puts "users are created"

puts "generate new parts....."
parts_attributes = [
{
name: "Front light right",
description: "Golf 7, 2017, like new, small scratches on the glass",
part_type_id: "X",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558529421/front-bumper.png",
sold: false,
user_id: User.all.sample.id,
price: "100"
},
{
name: "Rear light right",
description: "Golf 7, 2017, like new, small scratches on the glass",
part_type_id: "Y",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558529420/s-l1600_un1znb.jpg",
sold: false,
user_id: User.all.sample.id,
price: "200"
},
{
name: "ACC",
description: "Golf 6, 2015, good contition, works properly",
part_type_id: "5Q0907561",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558529420/s-l1600_1_bcwrur.jpg",
sold: true,
user_id: User.all.sample.id,
price: "300"
},
{
name: "Mirror R",
description: "Golf 6, 2015, good contition, works properly",
part_type_id: "5Q0907561",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558529420/s-l1600_2_pmqf2o.jpg",
sold: true,
user_id: User.all.sample.id,
price: "400"
},
{
name: "360 camera view",
description: "BMW 320, 2018, good contition, works properly",
part_type_id: "5G9947291B",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558529420/images_c7eymb.jpg",
sold: false,
user_id: User.all.sample.id,
price: "500"
},
{
name: "LED Pannel inside",
description: "Golf 7, 2017, good contition, works properly",
part_type_id: "5G9947291B",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558529420/s-l1600_3_mz67ik.jpg",
sold: false,
user_id: User.all.sample.id,
price: "600"
},
{
name: "Onborad ECU",
description: "BMW 320, 2018, contition not tested, not tested",
part_type_id: "5G9947291B",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558529420/image_300583_big_aqa5ma.jpg",
sold: true,
user_id: User.all.sample.id,
price: "1500"
},
{
name: "Motor management",
description: "BMW X3, 2016, contition not tested, not tested",
part_type_id: "5G9947291B",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558529420/MotorManagement.jpg",
sold: false,
user_id: User.all.sample.id,
price: "1000"
},
{
name: "Head Lamp Front Right",
description: "530, 2013, normal contition, works",
part_type_id: "5G9947291B",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558529728/image_296363_big_kp7xui.jpg",
sold: true,
user_id: User.all.sample.id,
price: "700"
},
{
name: "Laser distance detection",
description: "Audi A8, 2015, good contition, works properly",
part_type_id: "5G9947291B",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558529725/images_1_hckujw.jpg",
sold: false,
user_id: User.all.sample.id,
price: "2400"
}
]
parts_attributes.each do |part_info|
  i = Part.new(part_info)
  i.remote_photo_url = part_info[:photo]
  i.save
end
# Part.create!(parts_attributes)

puts "generate new trades....."
trades_attributes = [
{
user_id: User.first.id,
part_id: Part.second.id,
date: "1.2.2019"
},
{
user_id: User.first.id,
part_id: Part.third.id,
date: "2.3.2019"
},
{
user_id: User.second.id,
part_id: Part.fourth.id,
date: "3.4.2019"
},
{
user_id: User.third.id,
part_id: Part.fifth.id,
date: "4.5.2019"
},
{
user_id: User.fourth.id,
part_id: Part.last.id,
date: "5.6.2019"
}
]
Trade.create!(trades_attributes)


puts 'seed finish'
