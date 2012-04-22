# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  
  User.create(name: 'Captain Jack Sparrow', tagline: 'Swashbuckling Deep Seas Pirate', facebook: 'http://www.facebook.com/CaptainJackSparrow' , twitter: 'http://twitter.com/captjsparrow' , website: 'http://piratesonline.go.com/', picture: 'http://4.bp.blogspot.com/-frqLTHLRF6k/TasELlP4d7I/AAAAAAAAGXc/mFB_rkySiek/s1600/captain-jack-sparrow7868.jpg' )

  Experience.create(user_id: 1, title: 'Captain Pirate', company: 'Sole-Propieratry', company_url: 'http://www.disney.com', date: '2005 - Present', list_order: '1' )
