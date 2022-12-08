require "open-uri"
Activity.destroy_all

User.destroy_all

User.create! email: "kiran@nedumkallel.co.uk", password: "password"
User.create! email: "george@george.george", password: "george"
User.create! email: "jack@jack.jack", password: "123456"
User.create! email: "michelle@michelle.michelle", password: "123456"
User.create! email: "kiran@kiran.kiran", password: "123456"

bowl = Activity.create!(
  name: "Hollywood Bowl",
  description: "Hollywood Bowl is the UK's best ten pin bowling alley. With a delicious food & drink menu and arcade games - there's something for everyone!",
  tag: ["fun", "sport", "bowling"],
  price: 10,
  image: "https://upload.wikimedia.org/wikipedia/commons/4/4b/Bowlerbowling.JPG",
  start: DateTime.new(2022,12,1),
  end: DateTime.new(2022,12,2),
  location: "Shoreditch",
  free: false,
  venue: nil,
  booking: true,
  user_id: User.all[0].id.to_i
)

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/4/4b/Bowlerbowling.JPG")
bowl.photos.attach(io: file, filename: "bowl1.jpg", content_type: "image/jpg")
bowl.save

skate = Activity.create!(
  name: "Queensway Ice Rink",
  description: "Let's get back into our glide! London's only all year-round ice rink. Whether you are a pro or just playin' - you're welcome at Queens.",
  tag: ["sport", "winter"],
  price: 20,
  image: "https://media.cntraveller.com/photos/6357e9e5caee2b970a0952ab/16:9/w_2992,h_1683,c_limit/3.-Skate-at-Somerset-House-with-Moët-&-Chandon-2022.-Image-by-Owen-Harvey.jpg",
  start: DateTime.new(2022,12,2),
  end: DateTime.new(2022,12,2),
  location: "Hoxton",
  free: false,
  venue: nil,
  booking: false,
  user_id: User.all[0].id.to_i
)

file = URI.open("https://media.timeout.com/images/105937325/750/422/image.jpg")
skate.photos.attach(io: file, filename: "skate1.jpg", content_type: "image/jpg")
skate.save

pistol = Activity.create!(
  name: "British Pistol Club",
  description: "The British Pistol Club was founded in 1957, for the encouragement of International Pistol Shooting, and is the oldest and largest shooting club exclusive to pistol in Great Britain.",
  tag: ["sport", "shooting"],
  price: 20,
  image: "https://images.ctfassets.net/v8zaoys2pgzt/7ttIKjsnu9j817iWzEHi0w/9baad0a29da86d04f7ea8e9a1f39b4a3/Shooting.jpg?fit=thumb&w=1200&h=600",
  start: DateTime.new(2022,12,1),
  end: DateTime.new(2022,12,4),
  location: "Camden Town",
  free: false,
  venue: nil,
  booking: true,
  user_id: User.all[0].id.to_i
)

file = URI.open("https://images.ctfassets.net/v8zaoys2pgzt/7ttIKjsnu9j817iWzEHi0w/9baad0a29da86d04f7ea8e9a1f39b4a3/Shooting.jpg?fit=thumb&w=1200&h=600")
pistol.photos.attach(io: file, filename: "pistol1.jpg", content_type: "image/jpg")
pistol.save

snow = Activity.create!(
  name: "The Snow Centre",
  description: "The UK's largest indoor lesson slope, maintained with the perfect snow - perfect for all your indoor skiing and snowboarding needs.",
  tag: ["winter", "sport"],
  price: 30,
  image: "https://i2-prod.mylondon.news/incoming/article22080946.ece/ALTERNATES/s1200/0__SKA2030.jpg",
  start: DateTime.new(2022,12,4),
  end: DateTime.new(2022,12,4),
  location: "Farringdon",
  free: false,
  venue: nil,
  booking: true,
  user_id: User.all[0].id.to_i
)

file = URI.open("https://i2-prod.mylondon.news/incoming/article22080946.ece/ALTERNATES/s1200/0__SKA2030.jpg")
snow.photos.attach(io: file, filename: "snow1.jpg", content_type: "image/jpg")
snow.save

hartleys = Activity.create(
  name: "Hartley's Irish Folk Music",
  description: "Hartley's is London’s homiest Irish bar located at 14 Putnam Ave. in the Hoxton area. At Hartley's, we pride ourselves on the warmth of Irish hospitality, great quality product and a place where neighbors can meet and chat in our cozy shebeen. Live traditional Irish music every Monday at 8pm, with local musicians coming round to play together and sing. Our food menu consists of the best locally sourced fresh ingredients, daily baked Irish soda bread. We serve a vast array of drink, local craft beer, well-crafted cocktails, and premium liquor. ",
  tag: ["music"],
  price: 0,
  image: "https://www.altemarkthalle.ch/wp-content/uploads/2018/07/Irish-Folk-Session.jpg",
  start: DateTime.new(2022,12,2),
  end: DateTime.new(2022,12,2),
  location: "Hoxton",
  free: true,
  venue: "Hartleys",
  booking: false,
  user_id: User.all[2].id.to_i
)

Review.create!(
  title: "Heaven",
  rating: 5,
  comment: "I love Hartleys but it's difficult to express why without just dragging someone there.

  The closest I've gotten is: Imagine you went to a friend's well appointed living room and for some serendipitous reason there was a full bar and kitchen.

  Oh and every Monday a bunch of lads come 'round and play rousing Celtic music.

  The food is the best kind, very simple, but made with the best ingredients and well.

  They have some of the best Guinness you can get in the city, It becomes a virtuous cycle, they never stop selling it so it's always as fresh as possible.",
  activity: Activity.last
)

Review.create!(
  title: "Little slice of Ireland",
  rating: 5,
  comment: "It's been a while since I've been to Hartley's. I stopped by on a Monday night and I was so happy that I got hit with their Music Monday. Traditional Irish music, played live mind you, is so soothing and it totally matches Hartley's cozy ambiance. The venue is small, sweetly decorated, and dark --perfect place to bring a date or chill alone with a warm Guinness or a cool glass of white wine. You must try the soda bread. It's the perfect snack and my Irish pal says that it tastes just like home....",
  activity: hartleys
)

file = URI.open("https://www.altemarkthalle.ch/wp-content/uploads/2018/07/Irish-Folk-Session.jpg")
hartleys.photos.attach(io: file, filename: "hartleys1.jpg", content_type: "image/jpg")
file2 = URI.open("https://www.hillwalktours.com/wp-content/uploads/2021/11/sheep-5c-s-head_19604437_613837abac08a8ba9463b1b49523afabad38bed3-e1611335605265.jpeg")
hartleys.photos.attach(io: file2, filename: "hartleys2.jpg", content_type: "image/jpg")
file3 = URI.open("https://www.musicianwave.com/wp-content/uploads/2021/03/the-dubliners-788x321.jpg")
hartleys.photos.attach(io: file3, filename: "hartleys3.jpg", content_type: "image/jpg")
file4 = URI.open("https://i.ytimg.com/vi/O9a8pVGa1Mo/maxresdefault.jpg")
hartleys.photos.attach(io: file4, filename: "hartleys4.jpg", content_type: "image/jpg")
file5 = URI.open("https://www.irelandbeforeyoudie.com/wp-content/uploads/2017/09/Stags-Head-Pub.jpg")
hartleys.photos.attach(io: file5, filename: "hartleys5.jpg", content_type: "image/jpg")
hartleys.save



scottish = Activity.create!(
  name: "Scottish Dance Night",
  description: "Come enjoy Thursday night Scottish dance at Cameron’s. We are passionate about education. By publishing dance books and recording music specifically designed for learning Scottish Country Dance we are developing a strong legacy for the future.
  Cameron’s maintains and develops first rate standards of teaching Scottish Country Dance and music by training teachers, providing bespoke teaching materials and offering continuing development training for educators in the wider community.",
  tag: ["sport", "dancing"],
  price: 5,
  image: "https://ceilidhtree.co.uk/wp-content/uploads/2020/09/Ceilidh-dance-Dashing-white-sergeant-Ceilidh-Tree-scottish-1024x683.jpg",
  start: DateTime.new(2022,12,1),
  end: DateTime.new(2022,12,4),
  location: "Camden Town",
  free: false,
  venue: nil,
  booking: true,
  user_id: User.all[0].id.to_i
)
Review.create!(
  title: "Excellent",
  rating: 5,
  comment: "Cameron’s is the best place for Scottish Dance. It is a great community with a wonderful spirit and lots of talents to teach. I have been taking classes there for 3 years and it has been the best decision I've made in my life. The instructors are amazing, very knowledgeable and friendly.",
  activity: Activity.last
)

Review.create!(
  title: "Best Ceilidh classes",
  rating: 5,
  comment: "I've been coming to Cameron’s dance studio for the past 2 years and I must say that it's the best place for Scottish Dance in all of London. The instructors are fantastic and they always seem to know what the students need. Not to mention, it's a beautiful studio inside. Definitely recommend!",
  activity: Activity.last
)

file = URI.open("https://ceilidhtree.co.uk/wp-content/uploads/2020/09/Ceilidh-dance-Dashing-white-sergeant-Ceilidh-Tree-scottish-1024x683.jpg")
scottish.photos.attach(io: file, filename: "scottish1.jpg", content_type: "image/jpg")
file2 = URI.open("https://www.sarrattvillage.co.uk/wp-content/uploads/2019/01/204793_Ceilidh-Dancing.jpg")
scottish.photos.attach(io: file2, filename: "scottish2.jpg", content_type: "image/jpg")
file3 = URI.open("https://www.smallcitybigpersonality.co.uk/pubd/images/upd/1669c390564-RSCDS-WEB188.1200.jpg")
scottish.photos.attach(io: file3, filename: "scottish3.jpg", content_type: "image/jpg")
file4 = URI.open("https://media.tacdn.com/media/attractions-splice-spp-674x446/07/06/12/d5.jpg")
scottish.photos.attach(io: file4, filename: "scottish4.jpg", content_type: "image/jpg")
file5 = URI.open("https://i.pinimg.com/originals/33/fd/13/33fd132c1ab00856c2af7b87be6d2e48.jpg")
scottish.photos.attach(io: file5, filename: "scottish5.jpg", content_type: "image/jpg")
scottish.save

myo = Activity.create!(
  name: "MYOs crafts",
  description: "MYO is the perfect space in London to get creative on your own or with friends, family and co-workers - by providing the know-how, equipment, environment and materials for you to do so. Guests can come and enjoy decoupage, painting, sketching, ceramic painting, jewellery making, embroidery, t-shirt / canvas bag design, paper crafts every night of the week. On Tuesday nights visiting artists and professors give lectures on a variety of subjects, from color theory to moldmaking.",
  tag: ["art", "crafts"],
  price: 10,
  image: "https://cdn.britannica.com/88/132288-050-74505F78/Pottery-people-clay-Hohokam-designs.jpg",
  start: DateTime.new(2022,12,1),
  end: DateTime.new(2022,12,4),
  location: "Camden Town",
  free: false,
  venue: nil,
  booking: true,
  user_id: User.all[0].id.to_i
)

Review.create!(
  title: "Great place for a night of crafts",
  rating: 4,
  comment: "MYOs has solved all of my creative urges! With everything already neatly organized and ready to go, we've been spending more time crafting together than ever before. I don't know when this obsession with arts, crafts and other messy things will be sated, but right now MYOs is here for it.",
  activity: Activity.last
)

Review.create!(
  title: "Best place for artsy fun",
  rating: 5,
  comment: "We have hosted four arts and crafts night events in the past six months and we could not be happier with our decision to use MYOs. The app is phenomenally organized and easy to navigate. The customer service is great, everyone is always willing to help in any way possible. Plus, the pricing for our events ended up being cheaper than what we were quoted elsewhere!",
  activity: Activity.last
)

file1 = URI.open("https://cdn.britannica.com/88/132288-050-74505F78/Pottery-people-clay-Hohokam-designs.jpg")
myo.photos.attach(io: file1, filename: "myo1.jpg", content_type: "image/jpg")
file2 = URI.open("https://media.cntraveller.com/photos/611bf082628f4910ed102554/4:3/w_2664,h_1998,c_limit/-safia-shakarchi-jess-jos-january-2020-high-res-13.jpg")
myo.photos.attach(io: file2, filename: "myo2.jpg", content_type: "image/jpg")
file3 = URI.open("https://images.squarespace-cdn.com/content/v1/5f79b94cf5b27148cba63131/1603637436172-QBLH3HCVVI29BLMZJGBG/image.jpg?format=1500w")
myo.photos.attach(io: file3, filename: "myo3.jpg", content_type: "image/jpg")
file5 = URI.open("https://www.thesprucecrafts.com/thmb/QfnScKo1hDC_T9h7b7vmlEW32uk=/750x0/filters:no_upscale():max_bytes(150000):strip_icc()/paint-brushes-in-a-row-153773444-b0d3a3067cbf4e81a534a214a61bf8e0.jpg")
myo.photos.attach(io: file5, filename: "myo5.jpg", content_type: "image/jpg")
file6 = URI.open("https://static.designmynight.com/uploads/2022/02/painting-class-london-1-optimised.jpg")
myo.photos.attach(io: file6, filename: "myo6.jpg", content_type: "image/jpg")
myo.save


soccer = Activity.create!(
  name: "Footy Addicts",
  description: "",
  tag: ["sport", "nature"],
  price: 0,
  image: "https://images.saymedia-content.com/.image/t_share/MTg5NTcxNTk2OTU0OTA0MDk3/positions-in-soccer-and-their-roles.jpg",
  start: DateTime.new(2022,12,1),
  end: DateTime.new(2022,12,4),
  location: "Camden Town",
  free: true,
  venue: nil,
  booking: true,
  user_id: User.all[0].id.to_i
)

file1 = URI.open("https://images.saymedia-content.com/.image/t_share/MTg5NTcxNTk2OTU0OTA0MDk3/positions-in-soccer-and-their-roles.jpg")
soccer.photos.attach(io: file1, filename: "soccer1.jpg", content_type: "image/jpg")
soccer.save

hash = Activity.create!(
  name: "Hash House Harriers",
  description: "",
  tag: ["sport", "nature"],
  price: 0,
  image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRX2N2UOS5d_e-MhQ3v9NibQulfGJ9b-JPqJQ&usqp=CAU",
  start: DateTime.new(2022,12,1),
  end: DateTime.new(2022,12,4),
  location: "Hoxton",
  free: true,
  venue: nil,
  booking: false,
  user_id: User.all[0].id.to_i
)

file1 = URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRX2N2UOS5d_e-MhQ3v9NibQulfGJ9b-JPqJQ&usqp=CAU")
hash.photos.attach(io: file1, filename: "hash1.jpg", content_type: "image/jpg")
hash.save

cat = Activity.create!(
  name: "Cat Yoga",
  description: "",
  tag: ["sport"],
  price: 15,
  image: "https://www.boredpanda.com/blog/wp-content/uploads/2015/06/yoga-cats-shelter-adoption-homeward-bound-8.jpg",
  start: DateTime.new(2022,12,2),
  end: DateTime.new(2022,12,2),
  location: "Shoreditch",
  free: false,
  venue: "",
  booking: true,
  user_id: User.all[2].id.to_i
)

file1 = URI.open("https://www.boredpanda.com/blog/wp-content/uploads/2015/06/yoga-cats-shelter-adoption-homeward-bound-8.jpg")
cat.photos.attach(io: file1, filename: "cat1.jpg", content_type: "image/jpg")
cat.save

figure = Activity.create!(
  name: "Figuring Drawing Night",
  description: "",
  tag: ["art", "crafts"],
  price: 10,
  image: "https://images.squarespace-cdn.com/content/v1/59b2cb9812abd93aa29dc90a/1630165089633-GIC9DEHAXPLOZ6QGX9PJ/FigureDrawing_Winter_2020.jpg?format=1000w",
  start: DateTime.new(2022,12,2),
  end: DateTime.new(2022,12,2),
  location: "Camden Town",
  free: false,
  venue: "",
  booking: true,
  user_id: User.all[2].id.to_i
)

file1 = URI.open("https://images.squarespace-cdn.com/content/v1/59b2cb9812abd93aa29dc90a/1630165089633-GIC9DEHAXPLOZ6QGX9PJ/FigureDrawing_Winter_2020.jpg?format=1000w")
figure.photos.attach(io: file1, filename: "figure1.jpg", content_type: "image/jpg")
figure.save

pottery = Activity.create!(
  name: "Pottery Night",
  description: "",
  tag: ["crafts", "art"],
  price: 15,
  image: "https://cdn.uniquelylocal.co.uk/wp-content/uploads/2022/07/couples-date-night-pottery-session.png",
  start: DateTime.new(2022,12,2),
  end: DateTime.new(2022,12,2),
  location: "Notting Hill",
  free: false,
  venue: "",
  booking: false,
  user_id: User.all[2].id.to_i
)

file1 = URI.open("https://cdn.uniquelylocal.co.uk/wp-content/uploads/2022/07/couples-date-night-pottery-session.png")
pottery.photos.attach(io: file1, filename: "pottery1.png", content_type: "image/png")
pottery.save


jamesa = Activity.create!(
  name: "James Acaster Live",
  description: "",
  tag: ["comedy", "fun"],
  price: 10,
  image: "https://images.squarespace-cdn.com/content/v1/57e946caf5e2312997624c29/1666948468999-MG0XGATL8T20JTC0R5WB/James+Acaster+5.jpg?format=1000w",
  start: DateTime.new(2022,12,1),
  end: DateTime.new(2022,12,4),
  location: "Notting Hill",
  free: false,
  venue: nil,
  booking: false,
  user_id: User.all[0].id.to_i
)

file1 = URI.open("https://images.squarespace-cdn.com/content/v1/57e946caf5e2312997624c29/1666948468999-MG0XGATL8T20JTC0R5WB/James+Acaster+5.jpg?format=1000w")
jamesa.photos.attach(io: file1, filename: "jamesa.jpg", content_type: "image/jpg")
jamesa.save

upright = Activity.create!(
  name: "Beginner Comedy Class",
  description: "",
  tag: ["comedy", "fun"],
  price: 35,
  image: "https://static01.nyt.com/images/2014/02/23/arts/23UCB1_SPAN/23SUBUCB1-superJumbo.jpg",
  start: DateTime.new(2022,12,1),
  end: DateTime.new(2022,12,4),
  location: "Notting Hill",
  free: false,
  venue: nil,
  booking: true,
  user_id: User.all[0].id.to_i
)

file1 = URI.open("https://static01.nyt.com/images/2014/02/23/arts/23UCB1_SPAN/23SUBUCB1-superJumbo.jpg")
upright.photos.attach(io: file1, filename: "upright.jpg", content_type: "image/jpg")
upright.save

songwriting = Activity.create!(
  name: "Songwriting Workshop",
  description: "",
  tag: ["music"],
  price: 35,
  image: "https://www.musicconnection.com/wp-content/uploads/2021/07/Songwriting-Workshop-2021-620x420.png",
  start: DateTime.new(2022,12,1),
  end: DateTime.new(2022,12,4),
  location: "Notting Hill",
  free: false,
  venue: nil,
  booking: true,
  user_id: User.all[0].id.to_i
)

file1 = URI.open("https://www.musicconnection.com/wp-content/uploads/2021/07/Songwriting-Workshop-2021-620x420.png")
songwriting.photos.attach(io: file1, filename: "songwriting.png", content_type: "image/png")
songwriting.save

marcus = Activity.create!(
  name: "Marcus Mumford Live",
  description: "",
  tag: ["music", "live music"],
  price: 60,
  image: "https://www.nme.com/wp-content/uploads/2018/09/MandS-696x442.jpg",
  start: DateTime.new(2022,12,1),
  end: DateTime.new(2022,12,4),
  location: "Shoreditch",
  free: false,
  venue: nil,
  booking: true,
  user_id: User.all[0].id.to_i
)

file1 = URI.open("https://www.nme.com/wp-content/uploads/2018/09/MandS-696x442.jpg")
marcus.photos.attach(io: file1, filename: "marcus.jpg", content_type: "image/jpg")
marcus.save


meditation = Activity.create!(
  name: "Transcendental Meditation",
  description: "",
  tag: ["sport", "wellness"],
  price: 20,
  image: "https://media.allure.com/photos/5bc0ec8fb0683e2de0e7dce0/master/w_3960,h_2640,c_limit/sara%20auster%20sound%20bath.jpg",
  start: DateTime.new(2022,12,1),
  end: DateTime.new(2022,12,4),
  location: "Camden Town",
  free: false,
  venue: nil,
  booking: true,
  user_id: User.all[0].id.to_i
)

file1 = URI.open("https://media.allure.com/photos/5bc0ec8fb0683e2de0e7dce0/master/w_3960,h_2640,c_limit/sara%20auster%20sound%20bath.jpg")
meditation.photos.attach(io: file1, filename: "meditation.jpg", content_type: "image/jpg")
meditation.save

poetry = Activity.create!(
  name: "Poetry Slam",
  description: "",
  tag: ["art", "fun"],
  price: 0,
  image: "https://roundhouse-assets.s3.amazonaws.com/assets/Image/16872-fitandcrop-1200x681.jpg",
  start: DateTime.new(2022,12,1),
  end: DateTime.new(2022,12,4),
  location: "Notting Hill",
  free: true,
  venue: nil,
  booking: false,
  user_id: User.all[0].id.to_i
)

file1 = URI.open("https://roundhouse-assets.s3.amazonaws.com/assets/Image/16872-fitandcrop-1200x681.jpg")
poetry.photos.attach(io: file1, filename: "poetry.jpg", content_type: "image/jpg")
poetry.save



moth = Activity.create!(
  name: "The Moth",
  description: "",
  tag: ["stories", "art", "music"],
  price: 20,
  image: "https://i.ytimg.com/vi/23frsMMKud8/maxresdefault.jpg",
  start: DateTime.new(2022,12,1),
  end: DateTime.new(2022,12,4),
  location: "Soho",
  free: false,
  venue: nil,
  booking: true,
  user_id: User.all[0].id.to_i
)

file1 = URI.open("https://i.ytimg.com/vi/23frsMMKud8/maxresdefault.jpg")
moth.photos.attach(io: file1, filename: "moth.jpg", content_type: "image/jpg")
moth.save


jazz = Activity.create!(
  name: "Jazz Night",
  description: "",
  tag: ["music"],
  price: 0,
  image: "https://www.varsity.co.uk/images/dyn/store/465/0/23034.jpeg",
  start: DateTime.new(2022,12,1),
  end: DateTime.new(2022,12,4),
  location: "Brixton",
  free: true,
  venue: nil,
  booking: false,
  user_id: User.all[0].id.to_i
)

file1 = URI.open("https://www.varsity.co.uk/images/dyn/store/465/0/23034.jpeg")
jazz.photos.attach(io: file1, filename: "jazz.jpg", content_type: "image/jpg")
jazz.save

jam = Activity.create!(
  name: "Art Jam",
  description: "",
  tag: ["art"],
  price: 15,
  image: "http://cdn.shopify.com/s/files/1/0260/9971/2105/files/DIY_Tote_Bag_Painting_Kit_480x480.jpg?v=1592383336",
  start: DateTime.new(2022,12,1),
  end: DateTime.new(2022,12,4),
  location: "King's Cross",
  free: false,
  venue: nil,
  booking: true,
  user_id: User.all[0].id.to_i
)

file1 = URI.open("http://cdn.shopify.com/s/files/1/0260/9971/2105/files/DIY_Tote_Bag_Painting_Kit_480x480.jpg?v=1592383336")
jam.photos.attach(io: file1, filename: "jam.jpg", content_type: "image/jpg")
jam.save


printing = Activity.create!(
  name: "Printmaking",
  description: "",
  tag: ["art"],
  price: 15,
  image: "https://www.jacksonsart.com/blog/wp-content/uploads/2022/09/Slama_Press_Printmaking_Techniques_Blog_Image-4.jpg",
  start: DateTime.new(2022,12,1),
  end: DateTime.new(2022,12,4),
  location: "King's Cross",
  free: false,
  venue: nil,
  booking: true,
  user_id: User.all[0].id.to_i
)

file1 = URI.open("https://www.jacksonsart.com/blog/wp-content/uploads/2022/09/Slama_Press_Printmaking_Techniques_Blog_Image-4.jpg")
printing.photos.attach(io: file1, filename: "printing.jpg", content_type: "image/jpg")
printing.save

ceramics = Activity.create!(
  name: "Friday Nights Ceramics Course",
  description: "",
  tag: ["art"],
  price: 10,
  image: "https://candaceabroad.com/wp-content/uploads/2021/09/Pottery-classes-london-1440x2160.jpg",
  start: DateTime.new(2022,12,1),
  end: DateTime.new(2022,12,4),
  location: "Brixton",
  free: false,
  venue: nil,
  booking: true,
  user_id: User.all[0].id.to_i
)

file1 = URI.open("https://candaceabroad.com/wp-content/uploads/2021/09/Pottery-classes-london-1440x2160.jpg")
ceramics.photos.attach(io: file1, filename: "ceramics.jpg", content_type: "image/jpg")
ceramics.save

master = Activity.create!(
  name: "Master Peace",
  description: "",
  tag: ["art"],
  price: 10,
  image: "https://www.belgravialdn.com/app/uploads/sites/2/2021/01/MP-Space-1-scaled.jpg",
  start: DateTime.new(2022,12,1),
  end: DateTime.new(2022,12,4),
  location: "Brixton",
  free: false,
  venue: nil,
  booking: true,
  user_id: User.all[0].id.to_i
)

file1 = URI.open("https://www.belgravialdn.com/app/uploads/sites/2/2021/01/MP-Space-1-scaled.jpg")
master.photos.attach(io: file1, filename: "master.jpg", content_type: "image/jpg")
master.save

candle = Activity.create!(
  name: "Candle Making",
  description: "",
  tag: ["art"],
  price: 10,
  image: "https://cantocandle.com/wp-content/uploads/2018/04/SQWORKSHOP0041.jpg",
  start: DateTime.new(2022,12,1),
  end: DateTime.new(2022,12,4),
  location: "Brixton",
  free: false,
  venue: nil,
  booking: true,
  user_id: User.all[0].id.to_i
)

file1 = URI.open("https://cantocandle.com/wp-content/uploads/2018/04/SQWORKSHOP0041.jpg")
candle.photos.attach(io: file1, filename: "candle.jpg", content_type: "image/jpg")
candle.save

jewellery = Activity.create!(
  name: "jewellery Making",
  description: "",
  tag: ["art"],
  price: 10,
  image: "https://www.papermetal.co.uk/wp-content/uploads/2019/08/papermetal-JulieBailey-jewellerymaking-workshop-overhead.jpg",
  start: DateTime.new(2022,12,1),
  end: DateTime.new(2022,12,4),
  location: "Notting Hill",
  free: false,
  venue: nil,
  booking: true,
  user_id: User.all[0].id.to_i
)

file1 = URI.open("https://www.papermetal.co.uk/wp-content/uploads/2019/08/papermetal-JulieBailey-jewellerymaking-workshop-overhead.jpg")
jewellery.photos.attach(io: file1, filename: "jewellery.jpg", content_type: "image/jpg")
jewellery.save

cast = Activity.create!(
  name: "Moldmaking and Casting",
  description: "",
  tag: ["art"],
  price: 10,
  image: "https://s3-ap-southeast-2.amazonaws.com/anmm-data/blog/2017/03/29/dsc01420.jpg",
  start: DateTime.new(2022,12,1),
  end: DateTime.new(2022,12,4),
  location: "Notting Hill",
  free: false,
  venue: nil,
  booking: true,
  user_id: User.all[0].id.to_i
)

file1 = URI.open("https://s3-ap-southeast-2.amazonaws.com/anmm-data/blog/2017/03/29/dsc01420.jpg")
cast.photos.attach(io: file1, filename: "cast.jpg", content_type: "image/jpg")
cast.save

horse = Activity.create!(
  name: "Horseback Riding in Hyde Park",
  description: "",
  tag: ["sport"],
  price: 60,
  image: "https://www.equilifeworld.com/wp-content/uploads/2019/06/gvZjVRSQ-740x499.png",
  start: DateTime.new(2022,12,1),
  end: DateTime.new(2022,12,4),
  location: "Notting Hill",
  free: false,
  venue: nil,
  booking: true,
  user_id: User.all[2].id.to_i
)

file1 = URI.open("https://www.equilifeworld.com/wp-content/uploads/2019/06/gvZjVRSQ-740x499.png")
horse.photos.attach(io: file1, filename: "horse.jpg", content_type: "image/jpg")
horse.save

squash = Activity.create!(
  name: "Squash",
  description: "",
  tag: ["sport"],
  price: 10,
  image: "https://www.asrc.co.uk/media/1350/court.jpg",
  start: DateTime.new(2022,12,1),
  end: DateTime.new(2022,12,4),
  location: "Brixton",
  free: false,
  venue: nil,
  booking: true,
  user_id: User.all[2].id.to_i
)

file1 = URI.open("https://www.asrc.co.uk/media/1350/court.jpg")
squash.photos.attach(io: file1, filename: "squash.jpg", content_type: "image/jpg")
squash.save


park = Activity.create!(
  name: "Parkour Generations",
  description: "",
  tag: ["sport"],
  price: 10,
  image: "https://parkourgenerationslondon.com/wp-content/uploads/2019/08/RDV-2019-gym.jpg",
  start: DateTime.new(2022,12,1),
  end: DateTime.new(2022,12,4),
  location: "Brixton",
  free: false,
  venue: nil,
  booking: true,
  user_id: User.all[2].id.to_i
)

file1 = URI.open("https://parkourgenerationslondon.com/wp-content/uploads/2019/08/RDV-2019-gym.jpg")
park.photos.attach(io: file1, filename: "park.jpg", content_type: "image/jpg")
park.save

dash = Activity.create!(
  name: "CityDash",
  description: "",
  tag: ["sport"],
  price: 5,
  image: "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/f8/46/68/fire-hazard-citydash.jpg?w=1200&h=-1&s=1",
  start: DateTime.new(2022,12,1),
  end: DateTime.new(2022,12,4),
  location: "Brixton",
  free: false,
  venue: nil,
  booking: true,
  user_id: User.all[2].id.to_i
)

file1 = URI.open("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/f8/46/68/fire-hazard-citydash.jpg?w=1200&h=-1&s=1")
dash.photos.attach(io: file1, filename: "dash.jpg", content_type: "image/jpg")
dash.save
