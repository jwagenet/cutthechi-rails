# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "Jonathan Wagenet", email: "j_wagenet@u.pacific.edu", phone: "5418409908", password: "admin1", admin: "1") 


#Candidate.create(name: "Nate Lopez", photo: "nlopez", comment: "What am I getting myself into?") 

#Candidate.find_by(photo: "jbriggs").update_columns(comment: "Bald guys never have a bad hair day.")
#Candidate.find_by(photo: "jshih").destroy

