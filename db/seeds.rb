# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.destroy_all
Message.destroy_all
SpecialDate.destroy_all

10.times{ 

    u1 = User.create(name:Faker::Name.unique.name,
                        username: Faker::Twitter.screen_name,
                        img: Faker::Avatar.image,
                        birth_day: Faker::Date.between(from: 100.years.ago, to: Date.today),
                        gender: Faker::Gender.type,
                        theme: ""
    )
                       
   u2 =  User.create(name:Faker::Name.unique.name,
                      username: Faker::Twitter.screen_name,
                      img: Faker::Avatar.image,
                      birth_day: Faker::Date.between(from: 100.years.ago, to: Date.today),
                      gender: Faker::Gender.type,
                      theme: "",
                      partner_id: u1.id 
)

# puts "user1: #{u1}"
# puts "user2: #{u2}"
u1.partner_id = u2.id
u1.save

}

u21 = User.create(name:"Rechel", username:"rach", img:"https://i.pinimg.com/474x/54/58/b2/5458b24fb584f147f88cc3c26db20b4a.jpg",
                birth_day: Faker::Date.between(from: 100.years.ago, to: Date.today),
                gender: "female",
                theme: "",
               
)
u22 = User.create(name:"Ross", username:"ross", img:"https://i.pinimg.com/originals/92/9b/06/929b068f430a312e3b48014b22c81b40.jpg",
                birth_day: Faker::Date.between(from: 100.years.ago, to: Date.today),
                gender: "male",
                theme: "",
                partner_id: u21.id
) 
u21.partner_id = u22.id
u21.save



20.times{ Message.create(
                      content: Faker::Quote.famous_last_words,
                      user_id: Faker::Number.within(range: 1..22)
                      
)}

20.times { SpecialDate.create(
            special_day: Faker::Date.between(from: 100.years.ago, to: Date.today),
            user_id: Faker::Number.within(range: 1..22),
            title:  Faker::String.random(length: 3..12),
            location: Faker::Address.city 

 )}