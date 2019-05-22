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
photo: "https://randomuser.me/api/portraits/men/5.jpg"
},
{
first_name: "Jan",
last_name: "Pannini",
email: "jan.pannini@test.com",
seller: true,
password: "123456",
address: "champ elyse, paris, france",
photo: "https://randomuser.me/api/portraits/men/4.jpg"
},
{
first_name: "Mick",
last_name: "Thomson",
email: "mick.thomson@test.com",
seller: true,
password: "123456",
address: "time square, london, england",
photo: "https://randomuser.me/api/portraits/men/3.jpg"
},
{
first_name: "Juerg",
last_name: "Schuplli",
email: "juerg.schuplli@test.com",
seller: true,
password: "123456",
address: "zurich, swisstzerland",
photo: "https://randomuser.me/api/portraits/men/2.jpg"
},
{
first_name: "Chan",
last_name: "Peng",
email: "chang.peng@test.com",
seller: false,
password: "123456",
address: " shangai, china",
photo: "https://randomuser.me/api/portraits/men/1.jpg"
}
]
User.create!(users_attributes)
puts "users are created"

puts "generate new parts....."
parts_attributes = [
{
name: "Front light right",
description: "Golf 7, 2017, like new, small scratches on the glass",
part_type_id: "X",
photo: "https://www.carpartstuning.com/tuning/front-bumper-suitable-for-vw-golf-vii-7_5990750_6017962.jpg",
sold: false,
user_id: User.all.sample.id,
price: "100"
},
{
name: "Rear light right",
description: "Golf 7, 2017, like new, small scratches on the glass",
part_type_id: "Y",
photo: "https://i.ebayimg.com/images/g/Y-YAAOSwnWpcC1rJ/s-l1600.jpg",
sold: false,
user_id: User.all.sample.id,
price: "200"
},
{
name: "ACC",
description: "Golf 6, 2015, good contition, works properly",
part_type_id: "5Q0907561",
photo: "https://i.ebayimg.com/images/g/rNwAAOxydgZTKYhL/s-l1600.jpg",
sold: true,
user_id: User.all.sample.id,
price: "300"
},
{
name: "Mirror R",
description: "Golf 6, 2015, good contition, works properly",
part_type_id: "5Q0907561",
photo: "https://i.ebayimg.com/images/g/IDEAAOSw5Xpb7F1Y/s-l1600.jpg",
sold: true,
user_id: User.all.sample.id,
price: "400"
},
{
name: "360 camera view",
description: "BMW 320, 2018, good contition, works properly",
part_type_id: "5G9947291B",
photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQA7Wy3V3oIm1alyG2TjBMxBKEoeE84afEvB9gSlgmdSgHmnWYr",
sold: false,
user_id: User.all.sample.id,
price: "500"
},
{
name: "LED Pannel inside",
description: "Golf 7, 2017, good contition, works properly",
part_type_id: "5G9947291B",
photo: "https://i.ebayimg.com/images/g/mQIAAOSwo1lcQZgY/s-l1600.jpg",
sold: false,
user_id: User.all.sample.id,
price: "600"
},
{
name: "Onborad ECU",
description: "BMW 320, 2018, contition not tested, not tested",
part_type_id: "5G9947291B",
photo: "https://www.picclickimg.com/d/l400/pict/173589488959_/BMW-Classic-M5-E34-ABS-Steuerger%C3%A4t-Antiblockiersystem-Bremsen.jpg",
sold: true,
user_id: User.all.sample.id,
price: "1500"
},
{
name: "Motor management",
description: "BMW X3, 2016, contition not tested, not tested",
part_type_id: "5G9947291B",
photo: "https://static.schmiedmann.dk/ProductPictures/image_300583_big.jpg",
sold: false,
user_id: User.all.sample.id,
price: "1000"
},
{
name: "Head Lamp Front Right",
description: "530, 2013, normal contition, works",
part_type_id: "5G9947291B",
photo: "https://static.schmiedmann.dk/ProductPictures/image_296363_big.jpg",
sold: true,
user_id: User.all.sample.id,
price: "700"
},
{
name: "Laser distance detection",
description: "Audi A8, 2015, good contition, works properly",
part_type_id: "5G9947291B",
photo: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbJqyQGBuUfwpGMBcrHZVQSNBuRRw_vmpmIOgxXSjKdEWKmEDJ7w",
sold: false,
user_id: User.all.sample.id,
price: "2400"
}
]
Part.create!(parts_attributes)

puts "generate new transaction....."
transactions_attributes = [
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
Transaction.create!(transactions_attributes)


puts 'seed finish'
