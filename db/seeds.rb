# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "Pistola y Corazon",
    address:      "Rua da Boavista 16, Lisboa 1200-067, Portugal",
    food_type:        "mexican",
    description: "Mexicana, Latino, Comida de rua",
    photo: "https://www.washingtonian.com/wp-content/uploads/2016/12/empanada2.jpg.optimal.jpg"
  },
  {
    name:         "El Clandestino",
    address:      "Rua da Rosa 321, Lisboa 1200-386, Portugal",
    food_type:        "mexican",
    description: "Mexicana, Peruano, Latino",
    photo: "https://static-communitytable.parade.com/wp-content/uploads/2016/01/MexicanPizza-H.jpg"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    food_type:        "american",
    description: "Mexicana, Latino, Comida de rua",
    photo: "url"
  },
  {
    name:         "Le pré",
    address:      "route de Suresnes 7",
    food_type:        "french",
    description: "Mexicana, Latino, Comida de rua",
    photo: "url"
  },
  {
    name:         "La Siesta",
    address:      "Passeio Maritimo de Alges, Edificio La Siesta, Lisboa 1400-039, Portugal",
    food_type:        "mexican",
    description: "Mexicana Da América Central Latino Fast food Grill",
    photo: "http://www.abuelos.com/assets/uploads/2014/09/Lunch_Mexican_Stack-800x600-c-center.jpg"
  }
]
Restaurant.create!(restaurants_attributes)


User.destroy_all

puts 'Creating Users...'
users_attributes = [
  {
    username:         "Bob",
    age:      45,
    age_pref_start:        20,
    gender_pref: "female",
    description: "a playah from the latin himalayas",
    hash_tag_pref: "#BOSSMan",
    email: "reefer@420.com",
    password: "secret",
    age_pref_end: 100

  },
  {
    username:         "rob",
    age:      65,
    age_pref_start:        30,
    gender_pref: "female",
    description: "hey naw mean ",
    hash_tag_pref: "#howdy",
    email: "reefer@42.com",
    password: "secret1",
    age_pref_end: 100
  },
  {
    username:      "ash",
    age:      21,
    age_pref_start:        50,
    gender_pref: "female",
    description: "winning everyday",
    hash_tag_pref: "#cash",
    email: "reefer@20.com",
    password: "secret4",
    age_pref_end: 100
  },
  {
    username:         "stacy",
    age:      30,
    age_pref_start:        18,
    gender_pref: "female",
    description: "feminist and hate men",
    hash_tag_pref: "#blackflower",
    email: "rer@420.com",
    password: "secret4",
    age_pref_end: 30
  }
]


User.create!(users_attributes)
