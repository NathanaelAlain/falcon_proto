
puts "Deleting the trades of the database..."
Trade.destroy_all

puts "Deleting the parts of the database..."
Part.destroy_all

puts "Deleting the users of the database..."
User.destroy_all

puts "Generating new users....."
users_attributes = [
{
first_name: "Seller",
last_name: "Test",
email: "seller@test.com",
seller: true,
password: "123456",
address: "Penny Lane, Liverpool, UK",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558529421/user1_s2mh8z.jpg"
},
{
first_name: "Buyer",
last_name: "Test",
email: "buyer@test.com",
seller: false,
password: "123456",
address: "Penny Lane, Liverpool, UK",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558529421/user1_s2mh8z.jpg"
},
{
first_name: "Gael",
last_name: "SpareParts",
email: "gael@test.com",
seller: true,
password: "123456",
address: "checkpoint charlie, berlin, germany",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558529421/user1_s2mh8z.jpg"
},
{
first_name: "Maarten",
last_name: "Starr",
email: "maarten@test.com",
seller: true,
password: "123456",
address: "checkpoint charlie, berlin, germany",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558529421/user1_s2mh8z.jpg"
},
{
first_name: "Nathanael",
last_name: "Starr",
email: "nathanael@test.com",
seller: true,
password: "123456",
address: "checkpoint charlie, berlin, germany",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558529421/user1_s2mh8z.jpg"
},
{
first_name: "Romeo",
last_name: "Starr",
email: "romeo@test.com",
seller: true,
password: "123456",
address: "Penny Lane, Liverpool, UK",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558529421/user1_s2mh8z.jpg"
},
{
first_name: "Admin",
last_name: "Admin",
email: "admin@admin.com",
seller: true,
password: "123456",
address: "Penny Lane, Liverpool, UK",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558529421/user1_s2mh8z.jpg"
},
{
first_name: "#{Faker::Name.first_name }",
last_name: "#{Faker::Name.last_name}",
email: "#{Faker::Internet.email}",
seller: Faker::Boolean.boolean(0.2),
password: "123456",
address: "#{Faker::Address.full_address}",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558529421/user1_s2mh8z.jpg"
}
]

users_attributes.each do |user_info|
  u = User.new(user_info)
  u.remote_photo_url = user_info[:photo]
  u.save
end

puts "Generating new parts....."
parts_attributes = [
{
name: "Front light right",
description: "Golf 7, 2017, like new, small scratches on the glass",
part_type_id: "X",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558529421/front-bumper.png",
sold: false,
<<<<<<< HEAD
user_id: User.first.id,
price: "100"
=======
user_id: User.all.sample.id,
price: "125"
>>>>>>> master
},
{
name: "Rear light right",
description: "Golf 7, 2017, like new, small scratches on the glass",
part_type_id: "Y",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558529420/s-l1600_un1znb.jpg",
sold: false,
<<<<<<< HEAD
user_id: User.first.id,
price: "200"
=======
user_id: User.all.sample.id,
price: "450"
>>>>>>> master
},
{
name: "ACC",
description: "Golf 6, 2015, good condition, works properly",
part_type_id: "5Q0907561",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558529420/s-l1600_1_bcwrur.jpg",
sold: true,
<<<<<<< HEAD
user_id: User.second.id,
price: "300"
=======
user_id: User.all.sample.id,
price: "320"
>>>>>>> master
},
{
name: "Mirror right",
description: "Golf 6, 2015, good condition, works properly",
part_type_id: "5Q0907561",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558529420/s-l1600_2_pmqf2o.jpg",
sold: true,
<<<<<<< HEAD
user_id: User.first.id,
price: "400"
=======
user_id: User.all.sample.id,
price: "410"
>>>>>>> master
},
{
name: "360 camera view",
description: "BMW 320, 2018, good condition, works properly",
part_type_id: "5G9947291B",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558529420/images_c7eymb.jpg",
sold: false,
<<<<<<< HEAD
user_id: User.second.id,
price: "500"
=======
user_id: User.all.sample.id,
price: "615"
>>>>>>> master
},
{
name: "LED panel inside",
description: "Golf 7, 2017, good condition, works properly",
part_type_id: "5G9947291B",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558529420/s-l1600_3_mz67ik.jpg",
sold: false,
<<<<<<< HEAD
user_id: User.second.id,
price: "600"
=======
user_id: User.all.sample.id,
price: "250"
>>>>>>> master
},
{
name: "Onboard ECU",
description: "BMW 320, 2018, condition not tested, not tested",
part_type_id: "5G9947291B",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558529420/image_300583_big_aqa5ma.jpg",
sold: true,
<<<<<<< HEAD
user_id: User.first.id,
price: "1500"
=======
user_id: User.all.sample.id,
price: "1550"
>>>>>>> master
},
{
name: "Motor management",
description: "BMW X3, 2016, condition not tested, not tested",
part_type_id: "5G9947291B",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558529420/MotorManagement.jpg",
sold: false,
user_id: User.all.sample.id,
price: "1125"
},
{
name: "Head lamp front right",
description: "#{Faker::Vehicle.make_and_model}, 2013, normal condition, works",
part_type_id: "5G9947291B",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558529728/image_296363_big_kp7xui.jpg",
sold: true,
user_id: User.all.sample.id,
price: "600"
},
{
name: "Laser distance detection",
description: "Audi A8, 2015, good condition, works properly",
part_type_id: "5G9947291B",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558529725/images_1_hckujw.jpg",
sold: false,
user_id: User.all.sample.id,
price: "2400"
},
{
name: "Headlight front right",
description: "#{Faker::Vehicle.make_and_model}, 2017, normal condition, works",
part_type_id: "5G9947291B",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558688980/1_tzze0s.jpg",
sold: true,
user_id: User.all.sample.id,
price: "700"
},
{
name: "Taillight rear right",
description: "#{Faker::Vehicle.make_and_model}, 2016, normal condition, works",
part_type_id: "5G9947291B",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558688981/25_sgbeze.jpg",
sold: true,
user_id: User.all.sample.id,
price: "480"
},
{
name: "Taillight rear left",
description: "#{Faker::Vehicle.make_and_model}, 2016, normal condition, works",
part_type_id: "5G9947291B",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558688981/23_rchqxa.jpg",
sold: true,
user_id: User.all.sample.id,
price: "760"
},
{
name: "Headlight front right",
description: "#{Faker::Vehicle.make_and_model}, 2012, normal condition, works",
part_type_id: "5G9947291B",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558688980/2_fsfm7e.jpg",
sold: true,
user_id: User.all.sample.id,
price: "925"
},
{
name: "Headlight front right",
description: "#{Faker::Vehicle.make_and_model}, 2013, normal condition, works",
part_type_id: "5G9947291B",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558688980/4_eqnncp.jpg",
sold: true,
user_id: User.all.sample.id,
price: "655"
},
{
name: "Headlight front right",
description: "#{Faker::Vehicle.make_and_model}, 2013, normal condition, works",
part_type_id: "5G9947291B",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558688980/5_p810ws.jpg",
sold: true,
user_id: User.all.sample.id,
price: "590"
},
{
name: "Headlight front left",
description: "#{Faker::Vehicle.make_and_model}, 2014, normal condition, works",
part_type_id: "5G9947291B",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558688980/6_fatytp.jpg",
sold: true,
user_id: User.all.sample.id,
price: "800"
},
{
name: "Headlight front right",
description: "#{Faker::Vehicle.make_and_model}, 2002, normal condition, works",
part_type_id: "5G9947291B",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558688980/3_vgszjr.jpg",
sold: true,
user_id: User.all.sample.id,
price: "700"
},
{
name: "Taillight rear left",
description: "#{Faker::Vehicle.make_and_model}, 2003, normal condition, works",
part_type_id: "5G9947291B",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558688981/20_zqjnx4.jpg",
sold: true,
user_id: User.all.sample.id,
price: "810"
},
{
name: "Sideview mirror right (built in BLIS)",
description: "#{Faker::Vehicle.make_and_model}, 2011, normal condition, works",
part_type_id: "5G9947291B",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558688981/13_zhkbpy.jpg",
sold: true,
user_id: User.all.sample.id,
price: "1150"
},
{
name: "Sideview mirror right (with LED indicator)",
description: "#{Faker::Vehicle.make_and_model}, 2015, normal condition, works",
part_type_id: "5G9947291B",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558688981/12_sy3kue.jpg",
sold: true,
user_id: User.all.sample.id,
price: "635"
},
{
name: "Taillight rear right",
description: "#{Faker::Vehicle.make_and_model}, 2012, normal condition, works",
part_type_id: "5G9947291B",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558688981/24_vmr1ep.jpg",
sold: true,
user_id: User.all.sample.id,
price: "970"
},
{
name: "Sideview mirror right",
description: "#{Faker::Vehicle.make_and_model}, 2013, normal condition, works",
part_type_id: "5G9947291B",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558688981/10_tcebwq.jpg",
sold: true,
user_id: User.all.sample.id,
price: "675"
},
{
name: "Sideview mirror right",
description: "#{Faker::Vehicle.make_and_model}, 2011, normal condition, works",
part_type_id: "5G9947291B",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558688980/11_ackobc.jpg",
sold: true,
user_id: User.all.sample.id,
price: "740"
},
{
name: "Sideview mirror right",
description: "#{Faker::Vehicle.make_and_model}, 2004, normal condition, works",
part_type_id: "5G9947291B",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558688981/14_czxidc.jpg",
sold: true,
user_id: User.all.sample.id,
price: "885"
},
{
name: "Headlight front right",
description: "#{Faker::Vehicle.make_and_model}, 2008, normal condition, works",
part_type_id: "5G9947291B",
photo: "https://res.cloudinary.com/dbimnldt2/image/upload/v1558529728/image_296363_big_kp7xui.jpg",
sold: true,
<<<<<<< HEAD
user_id: User.first.id,
price: "700"
=======
user_id: User.all.sample.id,
price: "765"
>>>>>>> master
}

]
parts_attributes.each do |part_info|
  i = Part.new(part_info)
  i.remote_photo_url = part_info[:photo]
  i.save
end

puts "Generating new trades....."
trades_attributes = [
{
user_id: User.first.id,
part_id: Part.all.sample.id,
date: Date.current
},
{
user_id: User.first.id,
part_id: Part.third.id,
date: Date.current + 1
},
{
user_id: User.first.id,
part_id: Part.all.sample.id,
date: Date.current + 2
},
{
user_id: User.first.id,
part_id: Part.all.sample.id,
date: Date.current + 3
},
{
user_id: User.second.id,
part_id: Part.last.id,
date: Date.current + 4
},
{
user_id: User.second.id,
part_id: Part.all.sample.id,
date: Date.current + 4
},
{
user_id: User.second.id,
part_id: Part.all.sample.id,
date: Date.current + 4
},
]
Trade.create!(trades_attributes)


puts 'Seed finished'
