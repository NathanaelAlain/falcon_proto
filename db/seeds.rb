# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "deleting the parts database..."
Parts.destroy_all


puts "generate new parts....."
parts_attributes = [
{
name: "Front light right",
description: "Golf 7, 2017, like new, small scratches on the glass",
part_type_id: "X",
picture_url: "https://www.carpartstuning.com/tuning/front-bumper-suitable-for-vw-golf-vii-7_5990750_6017962.jpg",
sold: false,
user_id: "1",
price: "100"
},
{
name: "Rear light right",
description: "Golf 7, 2017, like new, small scratches on the glass",
part_type_id: "Y",
picture_url: "https://i.ebayimg.com/images/g/Y-YAAOSwnWpcC1rJ/s-l1600.jpg",
sold: false,
user_id: "1",
price: "200"
},
{
name: "ACC",
description: "Golf 6, 2015, good contition, works properly",
part_type_id: "5Q0907561",
picture_url: "https://i.ebayimg.com/images/g/rNwAAOxydgZTKYhL/s-l1600.jpg",
sold: false,
user_id: "1",
price: "300"
},
{
name: "Mirror R",
description: "Golf 6, 2015, good contition, works properly",
part_type_id: "5Q0907561",
picture_url: "https://i.ebayimg.com/images/g/IDEAAOSw5Xpb7F1Y/s-l1600.jpg",
sold: false,
user_id: "1",
price: "400"
},
{
name: "LED Pannel inside",
description: "Golf 7, 2017, good contition, works properly",
part_type_id: "5G9947291B",
picture_url: "https://i.ebayimg.com/images/g/mQIAAOSwo1lcQZgY/s-l1600.jpg",
sold: false,
user_id: "1",
price: "400"
}
]

Part.create!(part_attributes)
puts 'Finished!'

