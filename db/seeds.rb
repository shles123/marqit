# puts "destroying all events"
# Event.destroy_all

puts "destroying all reports"
Report.destroy_all

puts "destroying all users"
User.destroy_all

puts "destroying all events"
Event.destroy_all

# puts "creating 4 users"

# alon = User.create!(first_name: 'alon', last_name: 'shvartsman', email: 'alon@shvartsman.com', password: '123456', photo: 'https://res.cloudinary.com/dtgrzmgus/image/upload/v1575470200/alon_mb0qsd.jpg')
# noah = User.create!(first_name: 'noah', last_name: 'schlesinger', email: 'noah@schlesinger.com', password: '123456', photo: 'https://res.cloudinary.com/dtgrzmgus/image/upload/v1575470200/noah_zp00ur.jpg')
ofir = User.create!(first_name: 'ofir', last_name: 'Elboym', email: 'ofir@elboym.com', password: '123456', photo: 'https://res.cloudinary.com/flameleviosa/image/upload/v1575110884/bf7wwpnozxixabpi6dqr.png')
omri = User.create!(first_name: 'omri', last_name: 'shabtay', email: 'omri@shabtay.com', password: '123456', photo: 'https://res.cloudinary.com/dtgrzmgus/image/upload/v1575470200/omri_fa4eoq.jpg')


# EVENTNAMES = ["Clean up the beach!", "Road side clean up!", "Climate change protest", "Save the turtles!", "Electric transportation rally", "Plant festival", "Fighting for tomorrow", "Greenest Grass", "greta is comimg over"]
# CATEGORIES = ["Road Block", "Fire Hazard", "Pothole", "Water Leak", "Trash Over-Flow", "Malfunctioning Taffic Light", "Sewer leak", "Other"]
LOCATIONS = ["Ben yehuda 32, tel aviv", "arlozorov 7, tel aviv", "ben zion 25, tel aviv", "basel 10, tel aviv", "habima square, tel aviv", "gordon beach, tel aviv", "dizengoff 123, tel aviv", "alrozorov 17, tel aviv"]
# EVENT_DESCRIPTION = ["Come join the fight for our Planet!"]
REPORT_DESCRIPTION = ["Trash over-flowing", "There is a huge hole in the middle of the street", "the street light is not working", "there is sewer eveywhere!", "So many mosquitoes", "fire hydrant has blown up!"]

# EVENT_PHOTOS =[
#   "https://res.cloudinary.com/dtgrzmgus/image/upload/v1575450149/event2_zk5cik.jpg",
#   "https://res.cloudinary.com/dtgrzmgus/image/upload/v1575450149/event1_whcem1.jpg",
#   "https://res.cloudinary.com/dtgrzmgus/image/upload/v1575450149/event_3_iihsez.jpg",
#   "https://res.cloudinary.com/dtgrzmgus/image/upload/v1575450148/event_9_m4drjx.jpg",
#   "https://res.cloudinary.com/dtgrzmgus/image/upload/v1575450148/event_7_wpn7jy.jpg",
#   "https://res.cloudinary.com/dtgrzmgus/image/upload/v1575450148/event_8_krelbk.jpg",
#   "https://res.cloudinary.com/dtgrzmgus/image/upload/v1575450148/event_6_lo12pa.jpg",
#   "https://res.cloudinary.com/dtgrzmgus/image/upload/v1575450148/event_4_obqkt2.jpg",
#   "https://res.cloudinary.com/dtgrzmgus/image/upload/v1575450148/event_5_ak8jzr.jpg"
# ]

REPORT_PHOTOS = [
  "https://res.cloudinary.com/dtgrzmgus/image/upload/v1575451563/report2_tdzzre.jpg",
  "https://res.cloudinary.com/dtgrzmgus/image/upload/v1575451563/report3_hxalpu.jpg",
  "https://res.cloudinary.com/dtgrzmgus/image/upload/v1575451563/report5_v9jr5n.jpg",
  "https://res.cloudinary.com/dtgrzmgus/image/upload/v1575451563/report1_ff3wkn.jpg",
]


# puts "creating 3 reports for omri"
# 1.times do
#   Report.create!(
#     user: omri,
#     description: REPORT_DESCRIPTION.sample,
#     location: LOCATIONS.sample,
#     remote_photo_url: REPORT_PHOTOS.sample,
#     upvote: 0,
#     category: "Road Block"
#     )
# end

# puts "creating 3 reports for omri"
# 1.times do
#   Report.create!(
#     user: omri,
#     description: REPORT_DESCRIPTION.sample,
#     location: LOCATIONS.sample,
#     remote_photo_url: REPORT_PHOTOS.sample,
#     upvote: 0,
#     category: "other"
#     )
# end

puts "creating 3 reports for ofir"
1.times do
  Report.create!(
    user: ofir,
    description: "A huge pile of trash on the sidewalk :(",
    location: "Arlozorov 7, Tel Aviv, Israel",
    remote_photo_url: "https://res.cloudinary.com/flameleviosa/image/upload/v1575981063/trash_czvbri.jpg",
    upvote: rand(0..100),
    category: "Trash"
    )
end

1.times do
  Report.create!(
    user: ofir,
    description: "A flood!! Winter has come in full force this year",
    location: "Hovevey Tzion 103, Tel Aviv, Israel",
    remote_photo_url: "https://res.cloudinary.com/flameleviosa/image/upload/v1575981063/flood_cdv3su.jpg",
    upvote: rand(0..100),
    category: "Other"
    )
end

1.times do
  Report.create!(
    user: ofir,
    description: "There's a big pothole in the middle of the road",
    location: "Ben Yehuda 32, Tel Aviv, Israel",
    remote_photo_url: "https://res.cloudinary.com/flameleviosa/image/upload/v1575981063/pothole_x0uxjw.jpg",
    upvote: rand(0..100),
    category: "Pothole"
    )
end

# puts "creating 3 reports for alon"
# 3.times do
#   Report.create!(
#     user: alon,
#     description: REPORT_DESCRIPTION.sample,
#     location: LOCATIONS.sample,
#     remote_photo_url: REPORT_PHOTOS.sample,
#     upvote: 0,
#     category: CATEGORIES.sample
#     )
# end

# puts "creating 3 reports for noah"
# 3.times do
#   Report.create!(
#     user: noah,
#     description: REPORT_DESCRIPTION.sample,
#     location: LOCATIONS.sample,
#     remote_photo_url: REPORT_PHOTOS.sample,
#     upvote: 0,
#     category: CATEGORIES.sample
#     )
# end

puts "creating 4 events"

  event_one = Event.create!(
    description: "There's no planet B!",
    location: "Hertzel 83, Tel Aviv, Israel",
    name: "Join the annual conference and learn what small changes you can make to help our planet.",
    date: Time.now + rand(1..20),
    remote_photo_url: "https://res.cloudinary.com/flameleviosa/image/upload/v1575972830/planetb_mz1krm.jpg",
    )

  ChatRoom.create!(
    name: "Event Chat Room",
    event: event_one
  )


puts "made a first event and chatroom"


  event_two = Event.create!(
    description: "Clean the butts!",
    location: "Namal Tel Aviv, Israel",
    name: "The group who picks up the most cigarette butts wins eternal glory",
    date: Time.now + rand(1..20),
    remote_photo_url: "https://res.cloudinary.com/flameleviosa/image/upload/v1575972028/butts_lrwxj6.jpg",
    )
  ChatRoom.create!(
    name: "Event Chat Room",
    event: event_two
  )



  event_three = Event.create!(
    description: "Annual beach clean-up!",
    location: "Jerusalem beach, Tel Aviv, Israel",
    name: "Amazing plastic clean-up!",
    date: Time.now + rand(1..20),
    remote_photo_url: "https://res.cloudinary.com/flameleviosa/image/upload/v1575972032/cleanup_ccew7h.jpg",
    )
  ChatRoom.create!(
    name: "Event Chat Room",
    event: event_three
  )



  event_four = Event.create!(
    description: "Come join the fight for our Planet!",
    location: "Dizengoff 223, Tel Aviv, Israel",
    name: "Youth march for climate change awareness, everyone is invited!",
    date: Time.now + rand(1..20),
    remote_photo_url: "https://res.cloudinary.com/flameleviosa/image/upload/v1575972034/tlvstrike_wxdz0z.png",
    )
  ChatRoom.create!(
    name: "Event Chat Room",
    event: event_four
  )


  puts "finished seeding!"
