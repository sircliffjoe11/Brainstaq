# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?


# User.create!([
#   {
#     first_name: "Ben",
#     last_name: "Thomas",
#     username: "BenT", 
#     email: "benti@example.com", 
#     password: "123456789", 
#     country: "Somalia", 
#     bio: "I am Ben",
#     Phone: "+234667839387",
#     website: "www.benT.com"
#   },
  
#   {
#     first_name: "Jennifer",
#     last_name: "Smolden",
#     username: "Jenniden", 
#     email: "jenniden@example.com", 
#     password: "123456789", 
#     country: "Egypt", 
#     bio: "I am Jennifer",
#     Phone: "+234667839387",
#     website: "www.Jenniden.com"
#   },

#   {
#     first_name: "Oreva",
#     last_name: "Dugudu",
#     username: "Dugore", 
#     email: "dugore@example.com", 
#     password: "123456789", 
#     country: "Nigeria", 
#     bio: "I am Oreva",
#     Phone: "+234667839387",
#     website: "www.Dugore.com"
#   },

#   {
#     first_name: "Jean",
#     last_name: "Calisto",
#     username: "Calijean", 
#     email: "calijean@example.com", 
#     password: "123456789", 
#     country: "Congo", 
#     bio: "I am Jean",
#     Phone: "+234667839387",
#     website: "www.Calijean.com"
#   },

#   {
#     first_name: "Benson",
#     last_name: "Adewole",
#     username: "Adebee", 
#     email: "adebee@example.com", 
#     password: "123456789", 
#     country: "Cameroun", 
#     bio: "I am Adewole",
#     Phone: "+234667839387",
#     website: "www.Adebee.com"
#   },

#   {
#     first_name: "Isaiah",
#     last_name: "Ejiro",
#     username: "Ejiriah", 
#     email: "ejiriah@example.com", 
#     password: "123456789", 
#     country: "Benin", 
#     bio: "I am Ejiro",
#     Phone: "+234667839387",
#     website: "www.Ejiriah.com"
#   },
# ])









