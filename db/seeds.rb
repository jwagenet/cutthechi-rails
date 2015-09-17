# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#User.create(name: "Jonathan Wagenet", email: "j_wagenet@u.pacific.edu", phone: "5418409908", password: "admin1", admin: "1") 


#Candidate.create(name: "Emanual Rodriguez", photo: "erodriguez", comment: "I'll remember your face.") 

#Candidate.find_by(photo: "bchen").update_columns(comment: "Help me reach my dream of becoming the next Dalai Lama.")
#Candidate.find_by(photo: "tosterchrist").update_columns(comment: "I just want a haircut.")
#Candidate.find_by(photo: "jshih").destroy
User.find_by(name:"karly").update_columns(name: "Karly and Tri Delta")

