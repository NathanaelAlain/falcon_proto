puts "deleting the parts database..."
Part.destroy_all


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
sold: true,
user_id: "1",
price: "300"
},
{
name: "Mirror R",
description: "Golf 6, 2015, good contition, works properly",
part_type_id: "5Q0907561",
picture_url: "https://i.ebayimg.com/images/g/IDEAAOSw5Xpb7F1Y/s-l1600.jpg",
sold: true,
user_id: "2",
price: "400"
},
{
name: "360 camera view",
description: "BMW 320, 2018, good contition, works properly",
part_type_id: "5G9947291B",
picture_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQA7Wy3V3oIm1alyG2TjBMxBKEoeE84afEvB9gSlgmdSgHmnWYr",
sold: false,
user_id: "2",
price: "500"
},
{
name: "LED Pannel inside",
description: "Golf 7, 2017, good contition, works properly",
part_type_id: "5G9947291B",
picture_url: "https://i.ebayimg.com/images/g/mQIAAOSwo1lcQZgY/s-l1600.jpg",
sold: false,
user_id: "2",
price: "600"
},
{
name: "Onborad ECU",
description: "BMW 320, 2018, contition not tested, not tested",
part_type_id: "5G9947291B",
picture_url: "https://www.picclickimg.com/d/l400/pict/173589488959_/BMW-Classic-M5-E34-ABS-Steuerger%C3%A4t-Antiblockiersystem-Bremsen.jpg",
sold: true,
user_id: "3",
price: "1500"
},
{
name: "Motor management",
description: "BMW X3, 2016, contition not tested, not tested",
part_type_id: "5G9947291B",
picture_url: "https://static.schmiedmann.dk/ProductPictures/image_300583_big.jpg",
sold: false,
user_id: "3",
price: "1000"
},
{
name: "Head Lamp Front Right",
description: "530, 2013, normal contition, works",
part_type_id: "5G9947291B",
picture_url: "https://static.schmiedmann.dk/ProductPictures/image_296363_big.jpg",
sold: true,
user_id: "4",
price: "700"
},
{
name: "Laser distance detection",
description: "Audi A8, 2015, good contition, works properly",
part_type_id: "5G9947291B",
picture_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbJqyQGBuUfwpGMBcrHZVQSNBuRRw_vmpmIOgxXSjKdEWKmEDJ7w",
sold: false,
user_id: "4",
price: "2400"
}
]

Part.create!(parts_attributes)
puts 'Finished!'

