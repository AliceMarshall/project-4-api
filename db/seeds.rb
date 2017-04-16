# Users

alice = User.create!(username: "AliceJ", full_name: "Alice Marshall", email: "alice@alice.com", telephone: "",  profile_image: "https://avatars3.githubusercontent.com/u/17042311?v=3&s=460", password: "password", password_confirmation: "password")
susan = User.create!(username: "SusanJ", full_name: "Susan Jones", email: "susan@susan.com", telephone: "",  profile_image: "http://www.investmentwriting.com/newsite/wp-content/uploads/2015/06/SusanWeiner-300x300.jpg", password: "password", password_confirmation: "password")
jeremy = User.create!(username: "JeremyS", full_name: "Jeremy Smith", email: "jeremy@jeremy.com", telephone: "",  profile_image: "https://pbs.twimg.com/profile_images/763461232737210369/PFfZcFgn.jpg", password: "password", password_confirmation: "password")
christy = User.create!(username: "Christy123", full_name: "Christy Cooper", email: "christy@christy.com", telephone: "",  profile_image: "http://ualr.edu/mathematics/files/2012/03/Christy_Jackson.jpg", password: "password", password_confirmation: "password")
dougie = User.create!(username: "Dougie", full_name: "Douglas Johnson", email: "douglas@douglas.com", telephone: "",  profile_image: "https://pbs.twimg.com/profile_images/641694310224687104/6FPd2Vqw.jpg", password: "password", password_confirmation: "password")

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

# Items

Item.create!(name: "Treaded Digging Spade", instructions: "In good condition. Square headed spade, for garden work.", image: "http://www.buryhilltopsoilandlogs.co.uk/surrey-topsoil-blog/wp-content/uploads/2014/01/131310-fiskars-telescopic-garden-spade-straight1-1024x685.jpg", category_id: 1, user_id: 1)
Item.create!(name: "Harry Potter Books", instructions: "In good condition. Please don't bend page corners", image: "http://i.imgur.com/e5Um7dj.jpg", category_id: 4, user_id: 2)
Item.create!(name: "Ski Helmet", instructions: "Includes adjustable sizing, and air vents", image: "http://www.outsideonline.com/sites/default/files/styles/three-quarter-page-scaled-1x/public/forcite-alpine-helmet_h.jpg?itok=28OJRsHG", category_id: 3, user_id: 5)
Item.create!(name: "Bosch Power Drill", instructions: "Cordless, chargeable drill with 8 drill bits", image: "http://kingfisher.scene7.com/is/image/Kingfisher/3165140839877_03i?crop=438,210,2029,2029&anchor=1452,1224&$IA_halfWidth_350$", category_id: 5, user_id: 3)
