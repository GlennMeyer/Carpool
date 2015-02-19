# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
  # {
  #   email: '',
  #   username: '',
  #   password: 'abcd1234'
  # },

  # {
  #   user_id: ,
  #   meetup_street: '',
  #   meetup_city: 'Austin',
  #   meetup_state: 'Texas',
  #   meetup_lat: ,
  #   meetup_lng: ,
  #   dropoff_street: '716 Congress Ave',
  #   dropoff_city: 'Austin',
  #   dropoff_state: 'Texas',
  #   dropoff_lat: 30.269725,
  #   dropoff_lng: -97.74265400000002,
  #   leave_time: "2000-01-01 06:00:00",
  #   return_time: "2000-01-01 15:00:00",
  #   search_distance: 5
  # },

User.create([
  {
    email: 'glenn@meyer.com',
    username: 'GlennMeyer',
    password: 'abcd1234'
  },
  {
    email: 'neil@tyson.com',
    username: 'NeildeGrasse',
    password: 'abcd1234'
  },
  {
    email: 'bill@nye.com',
    username: 'TheScienceGuy',
    password: 'abcd1234'
  },
  {
    email: 'elon@musk.com',
    username: 'SpaceXplorer',
    password: 'abcd1234'
  },
  {
    email: 'stephen@hawking.com',
    username: 'TimeHistorian',
    password: 'abcd1234'
  }
])

Commute.create([
  {
    user_id: 1,
    meetup_street: 'Sawyer Ranch Road',
    meetup_city: 'Austin',
    meetup_state: 'Texas',
    meetup_lat: 30.1777867,
    meetup_lng: -98.0025369,
    dropoff_street: '716 Congress Ave',
    dropoff_city: 'Austin',
    dropoff_state: 'Texas',
    dropoff_lat: 30.269725,
    dropoff_lng: -97.74265400000002,
    leave_time: "2000-01-01 06:00:00",
    return_time: "2000-01-01 15:00:00",
    search_distance: 5
  },
  {
    user_id: 2,
    meetup_street: '13187 Fitzhugh Rd',
    meetup_city: 'Austin',
    meetup_state: 'Texas',
    meetup_lat: 30.2324016,
    meetup_lng: -98.00022309999997,
    dropoff_street: '716 Congress Ave',
    dropoff_city: 'Austin',
    dropoff_state: 'Texas',
    dropoff_lat: 30.1777867,
    dropoff_lng: -98.0025369,
    leave_time: "2000-01-01 06:00:00",
    return_time: "2000-01-01 15:00:00",
    search_distance: 5
  },
  {
    user_id: 3,
    meetup_street: 'West 150, 23455 Ranch Road 12',
    meetup_city: 'Austin',
    meetup_state: 'Texas',
    meetup_lat: 30.2238429,
    meetup_lng: -98.0266092,
    dropoff_street: '716 Congress Ave',
    dropoff_city: 'Austin',
    dropoff_state: 'Texas',
    dropoff_lat: 30.269725,
    dropoff_lng: -97.74265400000002,
    leave_time: "2000-01-01 06:00:00",
    return_time: "2000-01-01 15:00:00",
    search_distance: 5
  },
  {
    user_id: 4,
    meetup_street: '12005 U.S. 290 West',
    meetup_city: 'Austin',
    meetup_state: 'Texas',
    meetup_lat: 30.211548,
    meetup_lng: -97.96818400000001,
    dropoff_street: '716 Congress Ave',
    dropoff_city: 'Austin',
    dropoff_state: 'Texas',
    dropoff_lat: 30.269725,
    dropoff_lng: -97.74265400000002,
    leave_time: "2000-01-01 06:00:00",
    return_time: "2000-01-01 15:00:00",
    search_distance: 5
  },
  {
    user_id: 5,
    meetup_street: '7720 TX-71',
    meetup_city: 'Austin',
    meetup_state: 'Texas',
    meetup_lat: 30.2435626,
    meetup_lng: -97.88262320000001,
    dropoff_street: '716 Congress Ave',
    dropoff_city: 'Austin',
    dropoff_state: 'Texas',
    dropoff_lat: 30.269725,
    dropoff_lng: -97.74265400000002,
    leave_time: "2000-01-01 06:00:00",
    return_time: "2000-01-01 15:00:00",
    search_distance: 5
  }
])

Driver.create([
  {
    user_id: 1,
    commute_id: 1
  }
])

Rider.create([
  {
      user_id: 2,
      commute_id: 2,
      looking: true
  },
  {
      user_id: 3,
      commute_id: 3,
      looking: true
  },
  {
      user_id: 4,
      commute_id: 4,
      looking: true
  },
  {
      user_id: 5,
      commute_id: 5,
      looking: true
  }
])

Message.create([
  {
    sender_id: 1,
    recipient_id: 2,
    message: 'Test message user 1 to user 2'
  },
  {
    sender_id: 1,
    recipient_id: 3,
    message: 'Test message user 1 to user 3'
  },
  {
    sender_id: 1,
    recipient_id: 4,
    message: 'Test message user 1 to user 4'
  },
  {
    sender_id: 1,
    recipient_id: 5,
    message: 'Test message user 1 to user 5'
  },
  {
    sender_id: 2,
    recipient_id: 1,
    message: 'Test message user 2 to user 1'
  },
  {
    sender_id: 2,
    recipient_id: 3,
    message: 'Test message user 2 to user 3'
  },
  {
    sender_id: 2,
    recipient_id: 4,
    message: 'Test message user 2 to user 4'
  },
  {
    sender_id: 2,
    recipient_id: 5,
    message: 'Test message user 2 to user 5'
  },
  {
    sender_id: 3,
    recipient_id: 2,
    message: 'Test message user 3 to user 2'
  },
  {
    sender_id: 3,
    recipient_id: 1,
    message: 'Test message user 3 to user 1'
  },
  {
    sender_id: 3,
    recipient_id: 4,
    message: 'Test message user 3 to user 4'
  },
  {
    sender_id: 3,
    recipient_id: 5,
    message: 'Test message user 3 to user 5'
  },
  {
    sender_id: 4,
    recipient_id: 2,
    message: 'Test message user 4 to user 2'
  },
  {
    sender_id: 4,
    recipient_id: 3,
    message: 'Test message user 4 to user 3'
  },
  {
    sender_id: 4,
    recipient_id: 1,
    message: 'Test message user 4 to user 1'
  },
  {
    sender_id: 4,
    recipient_id: 5,
    message: 'Test message user 4 to user 5'
  },
  {
    sender_id: 5,
    recipient_id: 2,
    message: 'Test message user 5 to user 2'
  },
  {
    sender_id: 5,
    recipient_id: 3,
    message: 'Test message user 5 to user 3'
  },
  {
    sender_id: 5,
    recipient_id: 4,
    message: 'Test message user 5 to user 4'
  },
  {
    sender_id: 5,
    recipient_id: 1,
    message: 'Test message user 5 to user 1'
  },
  ##### Invites from Driver 1 to all Riders #####
  {
    sender_id: 1,
    recipient_id: 2,
    invite: true,
    message: 'Test invite user 1 to user 2'
  },
  {
    sender_id: 1,
    recipient_id: 3,
    invite: true,
    message: 'Test invite user 1 to user 3'
  },
  {
    sender_id: 1,
    recipient_id: 4,
    invite: true,
    message: 'Test invite user 1 to user 4'
  },
  {
    sender_id: 1,
    recipient_id: 5,
    invite: true,
    message: 'Test invite user 1 to user 5'
  }
])

Rideshare.create([
  {
    driver_id: 1,
  },
  {
    driver_id: 1,
  },
  {
    driver_id: 1,
  }
])

