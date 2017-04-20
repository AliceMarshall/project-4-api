# Users

alice = User.create!(username: "jlew", full_name: "Jamie Lewis", email: "jamie@jamie.com", image: File.open(File.join(Rails.root, "db/images/jamie.jpg")), password: "password", password_confirmation: "password")
susan = User.create!(username: "susie", full_name: "Susan Jones", email: "susan@susan.com", image: File.open(File.join(Rails.root, "db/images/susan.jpg")), password: "password", password_confirmation: "password")
jeremy = User.create!(username: "Jezza", full_name: "Jeremy Smith", email: "jeremy@jeremy.com", image: File.open(File.join(Rails.root, "db/images/jeremy.jpg")), password: "password", password_confirmation: "password")
christy = User.create!(username: "christina99", full_name: "Christina Cooper", email: "christina@christina.com", image: File.open(File.join(Rails.root, "db/images/christina.jpg")), password: "password", password_confirmation: "password")
dougie = User.create!(username: "dougie", full_name: "Douglas Johnson", email: "douglas@douglas.com", image: File.open(File.join(Rails.root, "db/images/douglas.jpg")), password: "password", password_confirmation: "password")

# Friendships

alice.friend_request(susan)
susan.accept_request(alice)
jeremy.friend_request(susan)
susan.accept_request(jeremy)
christy.friend_request(jeremy)
jeremy.accept_request(christy)
dougie.friend_request(christy)
christy.accept_request(dougie)

# Categories

Category.create!(name: "Garden")
Category.create!(name: "Kitchen/Home")
Category.create!(name: "Sports")
Category.create!(name: "Books/Maps")
Category.create!(name: "DIY")
Category.create!(name: "Games/Party")

# Items

Item.create!(name: "Treaded Digging Spade", instructions: "Square headed spade, for garden work.", image: File.open(File.join(Rails.root, "db/images/spade.jpg")), category_id: 1, user_id: 1, available: true)
Item.create!(name: "Harry Potter Books", instructions: "In good condition. Please don't bend page corners", image: File.open(File.join(Rails.root, "db/images/harry_potter.jpg")), category_id: 4, user_id: 2, available: true)
Item.create!(name: "Ski Helmet", instructions: "Includes adjustable sizing, and air vents", image: File.open(File.join(Rails.root, "db/images/ski_helmet.jpg")), category_id: 3, user_id: 5, available: true)
Item.create!(name: "Bosch Power Drill", instructions: "Cordless, chargeable drill with 8 drill bits", image: File.open(File.join(Rails.root, "db/images/drill.jpg")), category_id: 5, user_id: 3, available: true)
Item.create!(name: "Dixit Board Game", instructions: "Cordless, chargeable drill with 8 drill bits", image: File.open(File.join(Rails.root, "db/images/dixit.jpg")), category_id: 6, user_id: 4, available: true)

# Requests
