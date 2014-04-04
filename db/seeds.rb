# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

categories = Category.create([
  {name: 'Web Development', slug: 'web'},
  {name: 'Motion Graphics', slug: 'motion'}
])

Project.create(name: 'Centscere', date: Date.new(2014,2), technology: 'Rails, Javascript', role: 'Frontend/backend web development', description: 'Centscere is a charity website that monitors your social interactions. Your likes, posts and/or your tweets. It then applies a certain amount to each interaction you perform and donates that amount to a charity of your choice. It all happens automagically after you set up your account.', category_id: categories.first.id, link: 'http://centscere.com', published: true )

Page.create(title: 'About', heading: 'John Woolschlager', copy: "<p>I'm a full-stack web developer with a passion for creating intuitive, well crafted, and generally awesome things. I'm equally at home in both front-end design/development and server side programming. I have additional experience in mobile application development, motion graphics, and 3D animation. </p> <p>Outside of work I'm a wannabe homesteader, casual hiker, and avid gamer.</p> <p><i class='icon-gamepad icon-meta'></i> Dark Souls 2</p> <p><i class='icon-book icon-meta'></i> Robert Jordan's Wheel of Time series</p>", slug: 'about', published: 'true')