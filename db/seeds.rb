# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#User.all.destroy
User.create(name: "Jonathan Wagenet", email: "j_wagenet@u.pacific.edu", phone: "0000000000", password: "admin1", admin: "1") 
#User.create(name: "Ryan McVicar", email: "r_mcvicar@u.pacific.edu", phone: "0000000000", password: "admin1", admin: "1") 
#User.create(name: "Brian Chen", email: "b_chen8@u.pacific.edu", phone: "0000000000", password: "admin1", admin: "1")
#User.create(name: "Jordan Briggs", email: "r@u.pacific.edu", phone: "0000000000", password: "admin1", admin: "1") 
 


#Candidate.create(name: "Taylor Osterchrist", photo: "tosterchrist", comment: "Feel free to crop it!", commit: 0) 

#Candidate.find_by(photo: "bchen").update_columns(comment: "Help me reach my dream of becoming the next Dalai Lama.")
#Candidate.find_by(photo: "tosterchrist").update_columns(comment: "I just want a haircut.")
#Candidate.find_by(photo: "jshih").destroy
#User.find_by(name:"karly").update_columns(name: "Karly and Tri Delta")

