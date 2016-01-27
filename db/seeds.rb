# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all
Plan.delete_all
Genre.delete_all

User.create!( name: "ZsoltStein", email:"zsolt@mm.com", password: "password", role: "admin", about: "Gut Musik aus Eastern-Europe, ja? Achtung, achtung! Schneller! Eins Zwei Polizei!", avatar: File.open(File.join(Rails.root, 'dan.jpeg')))
User.create!( name: "Axis of Neilsome", email:"neil@mm.com", password: "password", role: "user", about: "4 chords is all you need. Maybe some teal. Neil-teal. Wooo!")
User.create!( name: "Reel Big Graeme", email:"graemes@mm.com", password: "password", role: "user", about: "I got 99 problems, but bad taste in music ain't one!")
User.create!( name: "Petestorm", email:"peter@mm.com", password: "password", role: "user", about: "Pirates of the Highlands. Yarr!")
User.create!( name: "ParanoidAndroKeith", email:"keith@mm.com", password: "password", role: "user", about: "I could rate your taste in music - But you won't like it")
# User.create!( name: "ZsoltStein", email:"zsolt@mm.com", password: "password", role: "user", about: "Gut Deutches Musik, ja? Achtung, achtung! Schneller! Eins Zwei Polizei!")
# User.create!( name: "ZsoltStein", email:"zsolt@mm.com", password: "password", role: "user", about: "Gut Deutches Musik, ja? Achtung, achtung! Schneller! Eins Zwei Polizei!")
# User.create!( name: "ZsoltStein", email:"zsolt@mm.com", password: "password", role: "user", about: "Gut Deutches Musik, ja? Achtung, achtung! Schneller! Eins Zwei Polizei!")

Genre.create!( name: "Blues" )
Genre.create!( name: "Rock" )
Genre.create!( name: "Black Metal" )
Genre.create!( name: "Country" )
Genre.create!( name: "Hip-hop" )
Genre.create!( name: "Latin" )
Genre.create!( name: "Pop" )
Genre.create!( name: "Rock&Roll" )
Genre.create!( name: "R&B" )
Genre.create!( name: "Blues" )
Genre.create!( name: "Eurodance" )
Genre.create!( name: "DnB" )
Genre.create!( name: "Hardcore" )
Genre.create!( name: "Industrial" )
Genre.create!( name: "Classic Rock" )
Genre.create!( name: "Heavy Metal" )
Genre.create!( name: "Power Metal" )
Genre.create!( name: "Nu Metal" )
Genre.create!( name: "House" )

Song.create!( title: "Amerika", user_id: 1, genre_id: "14", song: File.open(File.join(Rails.root, 'Amerika.mp3')))
# Song.create!( title: "Amerika", user_id: , genre_id: "", song: File.open(File.join(Rails.root, 'dan.jpeg')))
# Song.create!( title: "Amerika", user_id: , genre_id: "", song: File.open(File.join(Rails.root, 'dan.jpeg')))
# Song.create!( title: "Amerika", user_id: , genre_id: "", song: File.open(File.join(Rails.root, 'dan.jpeg')))
# Song.create!( title: "Amerika", user_id: , genre_id: "", song: File.open(File.join(Rails.root, 'dan.jpeg')))
# Song.create!( title: "Amerika", user_id: , genre_id: "", song: File.open(File.join(Rails.root, 'dan.jpeg')))
# Song.create!( title: "Amerika", user_id: , genre_id: "", song: File.open(File.join(Rails.root, 'dan.jpeg')))
# Song.create!( title: "Amerika", user_id: , genre_id: "", song: File.open(File.join(Rails.root, 'dan.jpeg')))
# Song.create!( title: "Amerika", user_id: , genre_id: "", song: File.open(File.join(Rails.root, 'dan.jpeg')))
# Song.create!( title: "Amerika", user_id: , genre_id: "", song: File.open(File.join(Rails.root, 'dan.jpeg')))
# Song.create!( title: "Amerika", user_id: , genre_id: "", song: File.open(File.join(Rails.root, 'dan.jpeg')))
