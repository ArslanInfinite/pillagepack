arslan = User.create(name: "arslan", password: "arslan")

Pack.create(name: "PackOne", 
  pack_image_url: "https://cdnb.artstation.com/p/assets/images/images/004/643/327/large/eugene-slautin-db-fabricator-closed-front-clean.jpg?1485239225", user_id: arslan.id)