Activity.destroy_all

User.destroy_all

User.create! email: "kiran@nedumkallel.co.uk", password: "password"
User.create! email: "george@george.george", password: "george"
User.create! email: "jack@jack.jack", password: "123456"
User.create! email: "michelle@michelle.michelle", password: "123456"
User.create! email: "kiran@kiran.kiran", password: "123456"

Activity.create!(
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

Activity.create!(
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

Activity.create!(
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

Activity.create!(
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

Activity.create!(
  name: "Hartley's Irish Folk Music",
  description: "Hartley's is London’s homiest Irish bar located at 14 Putnam Ave. in the Hoxton area. At Hartley's, we pride ourselves on the warmth of Irish hospitality, great quality product and a place where neighbors can meet and chat in our cozy shebeen. Our food menu consists of the best locally sourced fresh ingredients, daily baked Irish soda bread. We serve a vast array of drink, local craft beer, well-crafted cocktails, and premium liquor. Live traditional Irish music every Monday at 8pm, with local musicians coming round to play together and sing.",
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

Activity.create!(
  name: "Scottish Dance Night",
  description: "Come enjoy Thursday night Scottish dance at Cameron’s. We are passionate about education. By publishing dance books and recording music specifically designed for learning Scottish Country Dance we are developing a strong legacy for the future.
  Cameron’s maintains and develops first rate standards of teaching Scottish Country Dance and music by training teachers, providing bespoke teaching materials and offering continuing development training for educators in the wider community. There are also opportunities available for musicians and dancers to take part in music courses, medal tests for young people and dancing achievement awards. Many of our members and teachers go on to work in schools and in the wider community.
  We try to open doors for young people, whether that is through offers of scholarships to our annual events, assistance with voluntary work or the provision of youth-based competitions and initiatives.
  ",
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
  title: "Great place for a night of crafts",
  rating: 5,
  comment: "MYOs has solved all of my creative urges! With everything already neatly organized and ready to go, we've been spending more time crafting together than ever before. I don't know when this obsession with arts, crafts and other messy things will be sated, but right now MYOs is here for it.",
  activity: Activity.last
)
Activity.create!(
  name: "MYOs crafts",
  description: "MYO is the perfect space in London to get creative on your own or with friends, family and co-workers - by providing the know-how, equipment, environment and materials for you to do so. Guests can come and enjoy decoupage, painting, sketching, ceramic painting, jewellery making, embroidery, t-shirt / canvas bag design, paper crafts every night of the week.",
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
  rating: 5,
  comment: "MYOs has solved all of my creative urges! With everything already neatly organized and ready to go, we've been spending more time crafting together than ever before. I don't know when this obsession with arts, crafts and other messy things will be sated, but right now MYOs is here for it.",
  activity: Activity.last
)
