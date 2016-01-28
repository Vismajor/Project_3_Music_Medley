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
Collection.delete_all

User.create!( name: "ZsoltStein", email:"zsolt@mm.com", password: "password", role: "admin", about: "Gut Musik aus Eastern-Europe, ja? Achtung, achtung! Schneller! Eins Zwei Polizei!", avatar: File.open(File.join(Rails.root, 'dan.jpeg')))
User.create!( name: "Axis of Neilsome", email:"neil@mm.com", password: "password", role: "user", about: "4 chords is all you need. Maybe some teal. Neil-teal. Wooo!", avatar: File.open(File.join(Rails.root, 'nelson.jpeg')))
User.create!( name: "Reel Big Graeme", email:"graemes@mm.com", password: "password", role: "user", about: "I got 99 problems, but bad taste in music ain't one!", avatar: File.open(File.join(Rails.root, 'graeme.jpeg')))
User.create!( name: "Petestorm", email:"peter@mm.com", password: "password", role: "user", about: "Pirates of the Highlands. Yarr!", avatar: File.open(File.join(Rails.root, 'peter.jpeg')))
User.create!( name: "San-C/DC", email:"sandy@mm.com", password: "password", role: "user", about: "For those about to rock - we salute you!", avatar: File.open(File.join(Rails.root, 'sandy.jpeg')))
User.create!( name: "MyCocaine", email:"mycocaine@mm.com", password: "password", role: "admin", about: "Tangerines...", avatar: File.open(File.join(Rails.root, 'michaeltangerine.jpg')))
User.create!( name: "User1", email:"user1@mm.com", password: "password", role: "user", about: "For those about to rock - we salute you!")
User.create!( name: "User2", email:"user2@mm.com", password: "password", role: "user", about: "For those about to rock - we salute you!")
User.create!( name: "User3", email:"user3@mm.com", password: "password", role: "user", about: "For those about to rock - we salute you!")
User.create!( name: "User4", email:"user4@mm.com", password: "password", role: "user", about: "For those about to rock - we salute you!")
User.create!( name: "User5", email:"user5@mm.com", password: "password", role: "user", about: "For those about to rock - we salute you!")
User.create!( name: "User6", email:"user6@mm.com", password: "password", role: "user", about: "For those about to rock - we salute you!")
User.create!( name: "User7", email:"user7@mm.com", password: "password", role: "user", about: "For those about to rock - we salute you!")
User.create!( name: "User8", email:"user8@mm.com", password: "password", role: "user", about: "For those about to rock - we salute you!")
User.create!( name: "User9", email:"user9@mm.com", password: "password", role: "user", about: "For those about to rock - we salute you!")
User.create!( name: "User10", email:"user10@mm.com", password: "password", role: "user", about: "For those about to rock - we salute you!")


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

Song.create!( title: "Amerika", user_id: 1, genre_id: 14, song: File.open(File.join(Rails.root, 'Amerika.mp3')))
Song.create!( title: "zwitter", user_id: 1, genre_id: 14, song: File.open(File.join(Rails.root, 'zwitter.mp3')))
Song.create!( title: "mann gegen mann", user_id: 1, genre_id: 14, song: File.open(File.join(Rails.root, 'mann gegen mann.mp3')))
Song.create!( title: "moskau", user_id: 1, genre_id: 14, song: File.open(File.join(Rails.root, 'moskau.mp3')))
Song.create!( title: "4chords", user_id: 2, genre_id: 7, song: File.open(File.join(Rails.root, '4chords.mp3')))
Song.create!( title: "Birdplane", user_id: 2, genre_id: 7, song: File.open(File.join(Rails.root, 'Birdplane.mp3')))
Song.create!( title: "In the club tonight", user_id: 2, genre_id: 7, song: File.open(File.join(Rails.root, 'In the club tonight.mp3')))
Song.create!( title: "Beer", user_id: 3 , genre_id: 2, song: File.open(File.join(Rails.root, 'beer.mp3')))
Song.create!( title: "Take on Me", user_id: 3, genre_id: 2, song: File.open(File.join(Rails.root, 'take on me.mp3')))
Song.create!( title: "Dateless Losers", user_id: 3, genre_id: 2, song: File.open(File.join(Rails.root, 'Dateless Losers.mp3')))
Song.create!( title: "Drink", user_id: 4, genre_id: 2, song: File.open(File.join(Rails.root, 'Drink.mp3')))
Song.create!( title: "I will possess your heart", user_id: 4, genre_id: 7, song: File.open(File.join(Rails.root, 'I will possess your heart.mp3')))
Song.create!( title: "Title and registration", user_id: 4, genre_id: 7, song: File.open(File.join(Rails.root, 'Title and registration.mp3')))
Song.create!( title: "Rosie", user_id: 5, genre_id: 2, song: File.open(File.join(Rails.root, 'Rosie.mp3')))
Song.create!( title: "Back in Black", user_id: 5, genre_id: 2, song: File.open(File.join(Rails.root, 'Back in black.mp3')))
Song.create!( title: "Thunderstruck", user_id: 5, genre_id: 2, song: File.open(File.join(Rails.root, 'Thunderstruck.mp3')))
Song.create!( title: "Dirty deeds", user_id: 6, genre_id: 2, song: File.open(File.join(Rails.root, 'Dirty deeds.mp3')))
Song.create!( title: "Tangerines", user_id: 6, genre_id: 2, song: File.open(File.join(Rails.root, 'tangerine1.mp3')))
Song.create!( title: "Tangerines the size of tangerines", user_id: 6, genre_id: 2, song: File.open(File.join(Rails.root, 'tangerine2.mp3')))
Song.create!( title: "Looking for the tangerine", user_id: 6, genre_id: 2, song: File.open(File.join(Rails.root, 'tangerine3.mp3')))


