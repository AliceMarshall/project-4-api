# Users

alice = User.create!(username: "jlew", full_name: "Jamie Lewis", email: "amazingalice@msn.com", image: File.open(File.join(Rails.root, "db/images/jamie.jpg")), password: "password", password_confirmation: "password")
susan = User.create!(username: "susie", full_name: "Susan Jones", email: "marshall.alice92@gmail.com", image: File.open(File.join(Rails.root, "db/images/susan.jpg")), password: "password", password_confirmation: "password")
jeremy = User.create!(username: "Jezza", full_name: "Jeremy Smith", email: "jeremy@jeremy.com", image: File.open(File.join(Rails.root, "db/images/jeremy.jpg")), password: "password", password_confirmation: "password")
christy = User.create!(username: "christina99", full_name: "Christina Cooper", email: "christina@christina.com", image: File.open(File.join(Rails.root, "db/images/christina.jpg")), password: "password", password_confirmation: "password")
dougie = User.create!(username: "dougie", full_name: "Douglas Johnson", email: "douglas@douglas.com", image: File.open(File.join(Rails.root, "db/images/douglas.jpg")), password: "password", password_confirmation: "password")
tom = User.create!(username: "tommy", full_name: "Tom Chegg", email: "tom@tom.com", image: File.open(File.join(Rails.root, "db/images/tom.jpg")), password: "password", password_confirmation: "password")
dave = User.create!(username: "dave", full_name: "David Miller", email: "dave@dave.com", image: File.open(File.join(Rails.root, "db/images/dave.jpg")), password: "password", password_confirmation: "password")
sheila = User.create!(username: "shelly", full_name: "Sheila Cameron", email: "shelly@shelly.com", image: File.open(File.join(Rails.root, "db/images/sheila.jpg")), password: "password", password_confirmation: "password")

# Friendships

alice.friend_request(susan)
susan.accept_request(alice)
alice.friend_request(jeremy)
jeremy.accept_request(alice)
jeremy.friend_request(susan)
susan.accept_request(jeremy)
christy.friend_request(jeremy)
jeremy.accept_request(christy)
dougie.friend_request(christy)
christy.accept_request(dougie)
tom.friend_request(christy)
christy.accept_request(tom)
dave.friend_request(christy)
christy.accept_request(dave)
dave.friend_request(sheila)
sheila.accept_request(dave)
dave.friend_request(alice)
alice.accept_request(dave)

# Categories

Category.create!(name: "Garden")
Category.create!(name: "Kitchen/Home")
Category.create!(name: "Sports")
Category.create!(name: "Books/Maps")
Category.create!(name: "DIY")
Category.create!(name: "Games/Party")

# Items

Item.create!(name: "Treaded Digging Spade", instructions: "Square headed spade, for garden work.", image: File.open(File.join(Rails.root, "db/images/spade.jpg")), category_id: 1, user_id: 1, available: true, friend_level: "everyone")
Item.create!(name: "Harry Potter Books", instructions: "In good condition. Please don't bend page corners", image: File.open(File.join(Rails.root, "db/images/harry_potter.jpg")), category_id: 4, user_id: 2, available: true, friend_level: "everyone")
Item.create!(name: "Ski Helmet", instructions: "Includes adjustable sizing, and air vents", image: File.open(File.join(Rails.root, "db/images/ski_helmet.jpg")), category_id: 3, user_id: 3, available: true, friend_level: "friends")
Item.create!(name: "Bosch Power Drill", instructions: "Cordless, chargeable drill with 8 drill bits", image: File.open(File.join(Rails.root, "db/images/drill.jpg")), category_id: 5, user_id: 4, available: true, friend_level: "friends")
Item.create!(name: "Dixit Board Game", instructions: "Game for the whole family, to make you think in an abstract way. Ages 8 and over", image: File.open(File.join(Rails.root, "db/images/dixit.jpg")), category_id: 6, user_id: 5, available: true, friend_level: "everyone")
Item.create!(name: "Ironing Board and Iron", instructions: "Travel sized ironing board, with Philips iron. Contact me if only one needed.", image: File.open(File.join(Rails.root, "db/images/iron.jpg")), category_id: 2, user_id: 6, available: true, friend_level: "friends")
Item.create!(name: "DeWalt Chainsaw", instructions: "Must have proof of experience using a chainsaw. I can provide instruction and clothing too.", image: File.open(File.join(Rails.root, "db/images/chainsaw.jpg")), category_id: 1, user_id: 7, available: true, friend_level: "friends")
Item.create!(name: "Spiralizer", instructions: "Hemsley and Hemsley Spiralizer, perfect for adding fun to a meal by spiralizing vegetables into long curls like pasta", image: File.open(File.join(Rails.root, "db/images/spiralizer.jpg")), category_id: 2, user_id: 8, available: true, friend_level: "everyone")
Item.create!(name: "Big Boggle Game", instructions: "Full set of big boggle, a word game. Great for and evening in with friends", image: File.open(File.join(Rails.root, "db/images/boggle.jpg")), category_id: 6, user_id: 1, available: true, friend_level: "everyone")
Item.create!(name: "Garden Hoe", instructions: "1.5m garden hoe. Useful for weeding and gardening", image: File.open(File.join(Rails.root, "db/images/hoe.jpg")), category_id: 1, user_id: 2, available: true, friend_level: "everyone")
Item.create!(name: "Croquet Set", instructions: "A garden game, for posh parties and family orientated weekend fun.", image: File.open(File.join(Rails.root, "db/images/croquet.jpg")), category_id: 6, user_id: 3, available: true, friend_level: "friends")
Item.create!(name: "New Forest Walking OS Map", instructions: "Delightful map of the New Forest's walking trails. Great for weekend and bank holiday walks", image: File.open(File.join(Rails.root, "db/images/new-forest-map.jpg")), category_id: 4, user_id: 4, available: true, friend_level: "friends")
Item.create!(name: "Rummikub Game", instructions: "Game for the whole family. Ages 8 and over", image: File.open(File.join(Rails.root, "db/images/rummikub.jpg")), category_id: 6, user_id: 6, available: true, friend_level: "everyone")

# Requests
