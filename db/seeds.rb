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
  image: "https://upload.wikimedia.org/wikipedia/commons/4/4b/Bowlerbowling.JPG",
  start: DateTime.new(2022,12,2),
  end: DateTime.new(2022,12,2),
  location: "Hoxton",
  free: false,
  venue: nil,
  booking: false,
  user_id: User.all[0].id.to_i
)

Activity.create!(
  name: "Running",
  description: "Running is a method of terrestrial locomotion allowing humans and other animals to move rapidly on foot.",
  tag: ["sport"],
  price: 0,
  image: "https://upload.wikimedia.org/wikipedia/commons/4/4b/Bowlerbowling.JPG",
  start: DateTime.new(2022,12,2),
  end: DateTime.new(2022,12,3),
  location: "Haggerston",
  free: true,
  venue: nil,
  booking: false,
  user_id: User.all[0].id.to_i
)

Activity.create!(
  name: "British Pistol Club",
  description: "The British Pistol Club was founded in 1957, for the encouragement of International Pistol Shooting, and is the oldest and largest shooting club exclusive to pistol in Great Britain.",
  tag: ["sport", "shooting"],
  price: 20,
  image: "https://upload.wikimedia.org/wikipedia/commons/4/4b/Bowlerbowling.JPG",
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
  image: "https://upload.wikimedia.org/wikipedia/commons/4/4b/Bowlerbowling.JPG",
  start: DateTime.new(2022,12,4),
  end: DateTime.new(2022,12,4),
  location: "Farringdon",
  free: false,
  venue: nil,
  booking: true,
  user_id: User.all[0].id.to_i
)

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
  image: "https://upload.wikimedia.org/wikipedia/commons/4/4b/Bowlerbowling.JPG",
  start: DateTime.new(2022,12,2),
  end: DateTime.new(2022,12,2),
  location: "Hoxton",
  free: false,
  venue: nil,
  booking: false,
  user_id: User.all[0].id.to_i
)

Activity.create!(
  name: "Running",
  description: "Running is a method of terrestrial locomotion allowing humans and other animals to move rapidly on foot.",
  tag: ["sport"],
  price: 0,
  image: "https://upload.wikimedia.org/wikipedia/commons/4/4b/Bowlerbowling.JPG",
  start: DateTime.new(2022,12,2),
  end: DateTime.new(2022,12,3),
  location: "Haggerston",
  free: true,
  venue: nil,
  booking: false,
  user_id: User.all[0].id.to_i
)

Activity.create!(
  name: "British Pistol Club",
  description: "The British Pistol Club was founded in 1957, for the encouragement of International Pistol Shooting, and is the oldest and largest shooting club exclusive to pistol in Great Britain.",
  tag: ["sport", "shooting"],
  price: 20,
  image: "https://upload.wikimedia.org/wikipedia/commons/4/4b/Bowlerbowling.JPG",
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
  image: "https://upload.wikimedia.org/wikipedia/commons/4/4b/Bowlerbowling.JPG",
  start: DateTime.new(2022,12,4),
  end: DateTime.new(2022,12,4),
  location: "Farringdon",
  free: false,
  venue: nil,
  booking: true,
  user_id: User.all[0].id.to_i
)
