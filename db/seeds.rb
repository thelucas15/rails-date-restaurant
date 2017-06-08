

Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "Pistola y Corazon",
    address:      "Rua da Boavista 16, Lisboa 1200-067, Portugal",
    food_type: "mexican",
    description: "Comida Mexicana",
    photo: 'https://www.washingtonian.com/wp-content/uploads/2016/12/empanada2.jpg.optimal.jpg'
  },
  {
    name:         "El Clandestino",
    address:      "Rua da Rosa 321, Lisboa 1200-386, Portugal",
    food_type:    "mexican",
    description:  "Mexicana, Peruano, Latino",
    photo: 'https://static-communitytable.parade.com/wp-content/uploads/2016/01/MexicanPizza-H.jpg'
  },
  {
    name:         "Lisboète",
    address:      "Calçada Marquês Abrantes 94 1200-720 Lisboa Portugal",
    food_type:    "french",
    description:  "French Cuisine",
    photo: "https://u.tfstatic.com/restaurant_photos/933/64933/169/612/lisboete-sala-0f4d2.jpg"
  },
  {
    name:         "Sakana Bar Sushi",
    address:      "Cais da Viscondessa - Santos 1200-109 Lisboa Portugal",
    food_type:    "japanese",
    description:  "Japanese Cuisine",
    photo:"https://u.tfstatic.com/restaurant_photos/691/66691/169/612/sakana-restaurante-bar-sushi-interior-3b300.jpg"
  },
  {
    name:         "La Siesta",
    address:      "Passeio Maritimo de Alges, Edificio La Siesta, Lisboa 1400-039, Portugal",
    food_type:    "mexican",
    description:  "Mexicana Da América Central Latino Fast food Grill",
    photo: "http://www.abuelos.com/assets/uploads/2014/09/Lunch_Mexican_Stack-800x600-c-center.jpg"
  },
  {
    name:         "Las Ficheras",
    address:      "Rua dos Remolares 34 1200-371 Lisboa Portuga",
    food_type:    "mexican",
    description:  "Comida Mexicana",
    photo:"https://u.tfstatic.com/restaurant_photos/722/64722/169/612/las-ficheras-sala-0bb2e.jpg"
  },
  {
    name:         "Bica do Sapato",
    address:      "Av. Infante Dom Henrique Armazém B, Cais da Pedra, Santa Apolónia 1900-436 Lisboa Portugal",
    food_type:    "japanese",
    description:  "Japanese Cuisine",
    photo:"https://u.tfstatic.com/restaurant_photos/838/66838/169/612/bica-do-sapato-sushi-bar-sala-1f1ca.jpg"
  },
  {
    name:         "Bonsai",
    address:      "Rua Engenheiro Vieira da Silva 2 1050-105 Lisboa Portugal",
    food_type:    "japanese",
    description:  "Japanese Cuisine",
    photo:"https://u.tfstatic.com/restaurant_photos/745/66745/169/612/bonsai-sala-5f99e.jpg"
  },
  {
    name:         "Edo Sushi Lumiar",
    address:      "Rua Luís Pastor Macedo, 6A 1750-158 Lisboa Portugal",
    food_type:    "japanese",
    description:  "Japanese Cuisine",

    photo:"https://u.tfstatic.com/restaurant_photos/933/291933/169/612/edo-sushi-lumiar-sala-do-restaurante-ab384.jpg"
  },
  {
    name:         "Sakura Infante Santo",
    address:      "Av.Infante Santo 60B 1350-179 Lisboa Portugal",
    food_type:    "japanese",
    description:  "Japanese Cuisine",

    photo:"https://u.tfstatic.com/restaurant_photos/613/66613/169/612/sakura-infante-santo-sala-ffff3.jpg"
  },
  {
    name:         "Il Matricciano",
    address:      "Rua São Bento 107, Lisboa 1200-109, Portugal",
    food_type:    "italian",
    description:  "Comida tradicional Italiana",

    photo:"https://u.tfstatic.com/restaurant_photos/004/65004/169/612/bebel-ristorante-italiano-prato-0f7be.jpg"
  },
  {
    name:         "Come Prima",
    address:      "Rua Olival 258, Lisboa 1200-744, Portugal",
    food_type:    "italian",
    description:  "Comida tradicional Italiana",

    photo:"https://u.tfstatic.com/restaurant_photos/180/73180/169/612/come-prima-sala-entrada-f9c66.jpg"
  },
  {
    name:       "Divinos Prazeres",
    address:    "Rua Fradesso da Silveira, Nº2 Lj-B, 1300-609 Lisboa Portugal",
    food_type:   "italian",
    description: "Pizzas Italianas",

    photo:"https://u.tfstatic.com/restaurant_photos/095/65095/169/612/pizzaria-divinos-prazeres-63789.jpg"
  },
  {
    name:       "Trato 32",
    address:    "Rua Duque de Palmela, 32 H. PortoBay Marquês Lisboa 1250-096, Portugal",
    food_type:   "italian",
    description: "Cozinha Italiana",

    photo:"https://u.tfstatic.com/restaurant_photos/449/217449/169/612/trattoria-32-vista-da-sala-3a2a5.jpg"
  },
  {
    name:       "Ciao Milano",
    address:    "Rua das Portas de Santo Antão 31 e 37, Lisboa 1150-264, Portugal",
    food_type:   "italian",
    description: "Cozinha Italiana",

    photo:"https://u.tfstatic.com/restaurant_photos/951/301951/169/612/ciao-milano-vista-da-sala-92a31.jpg"
  },
  {
    name:       "Limoncello",
    address:    "Rua Nova da Trindade 10C, Lisboa 1200-302, Portugal ",
    food_type:   "italian",
    description: "Cozinha Italiana",

    photo:"https://u.tfstatic.com/restaurant_photos/730/77730/169/612/limoncello-cantina-28349.jpg"
  },
  {
    name:       "Tsubaki",
    address:    "R. Latino Coelho 23 1050-010 Lisboa Portugal",
    food_type:  "japanese",
    description: "Japanese Cuisine",

    photo:"https://u.tfstatic.com/restaurant_photos/916/71916/169/612/tsubaki-sala-a89cf.jpg"
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

