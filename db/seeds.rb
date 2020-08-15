User.destroy_all
Pack.destroy_all
Item.destroy_all 
PackItem.destroy_all

User.create(name: "arslan", password: "arslan")

Pack.create(name: "PackOne", pack_image_url: "https://cdnb.artstation.com/p/assets/images/images/004/643/327/large/eugene-slautin-db-fabricator-closed-front-clean.jpg?1485239225")

Item.create(name: "Sheperd", category: "Mechs", description: "Thank you, citizen!", item_image_url: "https://cdnb.artstation.com/p/assets/images/images/004/643/241/large/eugene-slautin-shepherd-front.jpg?1485238667")