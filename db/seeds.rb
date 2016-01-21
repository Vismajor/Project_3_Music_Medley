# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Plan.delete_all

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
