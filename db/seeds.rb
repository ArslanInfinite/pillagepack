User.destroy_all
Pack.destroy_all
Item.destroy_all 

arslan = User.create(name: "arslan", password: "arslan")

Pack.create(name: "PackOne", pack_image_url: "https://cdnb.artstation.com/p/assets/images/images/004/643/327/large/eugene-slautin-db-fabricator-closed-front-clean.jpg")

Pack.create(name: "PackTwo", pack_image_url: "https://cdnb.artstation.com/p/assets/images/images/004/643/477/large/eugene-slautin-ammobox-front.jpg")

Pack.create(name: "PackThree", pack_image_url: "https://cdna.artstation.com/p/assets/images/images/004/643/484/large/eugene-slautin-ammobox-locust-front.jpg")

Item.create(name: "Sheperd", category: "Mechs", description: "Thank you, citizen!", item_image_url: "https://cdnb.artstation.com/p/assets/images/images/004/643/241/large/eugene-slautin-shepherd-front.jpg?1485238667")

Item.create(name: "Jinnbot", category: "Mechs", description: "I restore order.", item_image_url: "https://cdnb.artstation.com/p/assets/images/images/004/643/245/large/eugene-slautin-jinbot-front.jpg")

Item.create(name: "DR-1", category: "Mechs", description: "We have been authorized to use force.", item_image_url: "https://cdnb.artstation.com/p/assets/images/images/004/643/247/large/eugene-slautin-dr1-front.jpg")

Item.create(name: "Loader Mech", category: "Mechs", description: "Always wanted to drive one of these.", item_image_url: "https://cdna.artstation.com/p/assets/images/images/004/643/266/large/eugene-slautin-loadermech-front.jpg")

Item.create(name: "Lancer Rifle", category: "Weapons", description: "The signature weapon of the COG, the Lancer possessed a fully automatic mode of fire and the iconic Chainsaw Bayonet. The Lancer's long service record was a result of its rugged reliability and reputation as a versatile assault rifle.", item_image_url: "https://cdna.artstation.com/p/assets/images/images/004/643/344/large/eugene-slautin-marcuslancer-front.jpg")

Item.create(name: "Gnasher Shotgun", category: "Weapons", description: "A point blank, full contact shot would often kill its target outright in a shower of gore.", item_image_url: "https://cdna.artstation.com/p/assets/images/images/004/643/348/large/eugene-slautin-gnasher-front.jpg")

Item.create(name: "Snub Pistol", category: "Weapons", description: "A standard sidearm for armed forces personnel. Though it lacked range and power, the Snub's quick fire rate made it reliable.", item_image_url: "https://cdna.artstation.com/p/assets/images/images/004/643/350/large/eugene-slautin-snubpistol-front.jpg")

Item.create(name: "Boltok Pistol", category: "Weapons", description: "The pistol continues the Locust design philosophy of creating weapons with an emphasis towards brute force.", item_image_url: "https://cdna.artstation.com/p/assets/images/images/004/643/366/large/eugene-slautin-boltok-front.jpg")

Item.create(name: "Boomshot", category: "Weapons", description: "The Boomshot fires a high-explosive shell that creates a large explosion upon impact, followed by the detonation of three to five small series of secondary explosions which are comparable to a cluster bomb.", item_image_url: "https://cdnb.artstation.com/p/assets/images/images/004/643/373/large/eugene-slautin-boomshot-front.jpg")

Item.create(name: "Torque Bow", category: "Weapons", description: "Wielded by the Locust elite, it fires an explosive-tipped, armor-piercing arrow. The projectile has a timed fuse which is designed to explode a half-second after penetrating a target, blasting it apart from the inside — almost invariably causing critical injury for the unfortunate target (if not instantaneous death).", item_image_url: "https://cdnb.artstation.com/p/assets/images/images/004/643/375/large/eugene-slautin-torquebow-front.jpg")

Item.create(name: "Combat Knife", category: "Weapons", description: "I dunno you stab people with it.", item_image_url: "https://cdna.artstation.com/p/assets/images/images/004/643/460/large/eugene-slautin-cogknife-front.jpg")

Item.create(name: "Longshot Sniper Rifle", category: "Weapons", description: "Reloading's a pain in the arse, but it'll stop a truck.", item_image_url: "https://cdna.artstation.com/p/assets/images/images/004/643/346/large/eugene-slautin-longshot-front.jpg")

Item.create(name: "COG Bike", category: "Vehicles", description: "Performing exceedingly well on both pavement and rugged off-road terrain, the bikes could also endure several large jumps at maximum speed without major structural damage.", item_image_url: "https://cdnb.artstation.com/p/assets/images/images/004/643/255/large/eugene-slautin-bike-side.jpg")

Item.create(name: "King Raven", category: "Vehicles", description: "Ravens reassured you that the good guys had arrived and were either going to give you something you badly needed, or get you out of somewhere you didn't want to be. There was nothing not to love about them. Their chakka-chakka engine note alone was enough to make hearts leap. Their rust streaks were sacred. And their pilots were all uniformly insane.", item_image_url: "https://cdna.artstation.com/p/assets/images/images/004/643/258/large/eugene-slautin-kingraven-front2.jpg")

Item.create(name: "Vulture", category: "Vehicles", description: "A large fixed wing, four-engine turboprop military aircraft employed by the Coalition of Ordered Governments in the post-Locust War era.", item_image_url: "https://cdna.artstation.com/p/assets/images/images/004/643/278/large/eugene-slautin-vulture-front.jpg")

Item.create(name: "MG Sentry", category: "Sentries", description: "Global Machine Gun Sentry", item_image_url: "https://cdna.artstation.com/p/assets/images/images/004/643/290/large/eugene-slautin-autosentrylv4-front.jpg")

Item.create(name: "Shock Sentry", category: "Sentries", description: "Delivers a bolt of high-powered electricity", item_image_url: "https://cdna.artstation.com/p/assets/images/images/004/643/320/large/eugene-slautin-shocksentrylv4-front.jpg")

Item.create(name: "Turret", category: "Sentries", description: "Manual Turret", item_image_url: "https://cdna.artstation.com/p/assets/images/images/004/643/324/large/eugene-slautin-turretlv4-front.jpg")

Item.create(name: "Congressional Cardboard", category: "Buddies", description: "Level 1", item_image_url: "https://cdnb.artstation.com/p/assets/images/images/004/643/411/large/eugene-slautin-decoy-lv1-front.jpg")

Item.create(name: "Strawman Argument", category: "Buddies", description: "Level 2", item_image_url: "https://cdnb.artstation.com/p/assets/images/images/004/643/413/large/eugene-slautin-decoy-lv2-front.jpg")

Item.create(name: "Bucket Buddy", category: "Buddies", description: "Level 3", item_image_url: "https://cdnb.artstation.com/p/assets/images/images/004/643/415/large/eugene-slautin-decoy-lv3-front.jpg")

Item.create(name: "Brother To The End", category: "Buddies", description: "Level 4", item_image_url: "https://cdna.artstation.com/p/assets/images/images/004/643/418/large/eugene-slautin-decoy-lv4-front.jpg")

Item.create(name: "Caltrops", category: "Barriers", description: "A basic barrier designed to keep the pests out", item_image_url: "https://cdnb.artstation.com/p/assets/images/images/004/643/337/large/eugene-slautin-barrierlv1-front.jpg")

Item.create(name: "Razor Wire", category: "Barriers", description: "Slow down the enemy while blasting them apart", item_image_url: "https://cdna.artstation.com/p/assets/images/images/004/643/338/large/eugene-slautin-barrierlv2-front.jpg?")

Item.create(name: "Electric Line", category: "Barriers", description: "Deal doses of electric agony to any unwanted guest", item_image_url: "https://cdnb.artstation.com/p/assets/images/images/004/643/339/large/eugene-slautin-barrierlv3-front.jpg")

Item.create(name: "Firewall", category: "Barriers", description: "A lethal line that inflicts burning damage to anyone foolish enough to tresspass", item_image_url: "https://cdna.artstation.com/p/assets/images/images/004/643/340/large/eugene-slautin-barrierlv4-front.jpg")