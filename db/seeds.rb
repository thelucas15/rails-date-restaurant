

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
    gender: "male",
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
    gender: "male",
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
    gender: "female",
    gender_pref: "female",
    description: "winning everyday",
    hash_tag_pref: "#cash",
    email: "reefer@20.com",
    password: "secret4",
    age_pref_end: 100
  },
  {
    username:         "thelucas15",
    age:      30,
    age_pref_start:        18,
    gender: "male",
    gender_pref: "female",
    description: "Killing Volleyballs for life",
    hash_tag_pref: "#BOSSMan",
    email: " lukasz.zygadlo@gmail.com ",
    password: "secret4",
    age_pref_end: 30
  },
  {
    username:         "mateBarey",
    age:      30,
    age_pref_start:        18,
    gender: "male",
    gender_pref: "female",
    description: "gettin it!",
    hash_tag_pref: "#DonCUBASEscoBAR",
    email: "georgeraulc@gmail.com",
    password: "secret4",
    age_pref_end: 30
  },
  {
    username:         "marysaints",
    age:      30,
    age_pref_start:        18,
    gender: "female",
    gender_pref: "male",
    description: "Portuguese and gnarly",
    hash_tag_pref: "#BLACKMamBA",
    email: "mymarysaints@gmail.com ",
    password: "secret4",
    age_pref_end: 30
  },
  {
    username:         "ricardo",
    age:      30,
    age_pref_start:        18,
    gender: "male",
    gender_pref: "female",
    description: "the epitamy of AWESOMENESS",
    hash_tag_pref: "#BasicBADASS",
    email: " rcostapinto@gmail.com ",
    password: "secret4",
    age_pref_end: 30
  },
  {
    username:         "stacy",
    age:      30,
    age_pref_start:        18,
    gender: "male",
    gender_pref: "female",
    description: "feminist and hate men",
    hash_tag_pref: "#blackflower",
    email: "rer@420.com",
    password: "secret4",
    age_pref_end: 30
  }
]


User.create!(users_attributes)
