# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
Plan.delete_all

User.create!( name: "ZsoltStein", email:"zsolt@mm.com", password: "password", role: "admin", about: "Gut Musik aus Eastern-Europe, ja? Achtung, achtung! Schneller! Eins Zwei Polizei!")
User.create!( name: "Axis of Neilsome", email:"neil@mm.com", password: "password", role: "user", about: "4 chords is all you need. Maybe some teal. Neil-teal. Wooo!")
User.create!( name: "Reel Big Graeme", email:"graemes@mm.com", password: "password", role: "user", about: "I got 99 problems, but bad taste in music ain't one!")
User.create!( name: "Petestorm", email:"peter@mm.com", password: "password", role: "user", about: "Pirates of the Highlands. Yarr!")
User.create!( name: "ParanoidAndroKeith", email:"keith@mm.com", password: "password", role: "user", about: "I could rate your taste in music - But you won't like it")
# User.create!( name: "ZsoltStein", email:"zsolt@mm.com", password: "password", role: "user", about: "Gut Deutches Musik, ja? Achtung, achtung! Schneller! Eins Zwei Polizei!")
# User.create!( name: "ZsoltStein", email:"zsolt@mm.com", password: "password", role: "user", about: "Gut Deutches Musik, ja? Achtung, achtung! Schneller! Eins Zwei Polizei!")
# User.create!( name: "ZsoltStein", email:"zsolt@mm.com", password: "password", role: "user", about: "Gut Deutches Musik, ja? Achtung, achtung! Schneller! Eins Zwei Polizei!")

Plan.create({
  name: 'Bronze',
  price: 10.00,
  interval: 'month',
  stripe_id: '1',
  features: ['10 SongUploads', '3 Collections', '30 SongDownloads'].join("\n\n"),
  display_order: 1
})

Plan.create({
  name: 'Silver',
  highlight: true, # This highlights the plan on the pricing page.
  price: 30.00,
  interval: 'month',
  stripe_id: '2',
  features: ['30 SongUploads', '8 Collections', '100 SongDownloads'].join("\n\n"),
  display_order: 2
})

Plan.create({
  name: 'Gold',
  price: 100.00, 
  interval: 'month',
  stripe_id: '3', 
  features: ['100 SongUploads', '15 Collections', '500 SongDownloads'].join("\n\n"), 
  display_order: 3
})
