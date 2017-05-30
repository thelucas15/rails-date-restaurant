

Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "Pistola y Corazon",
    address:      "Rua da Boavista 16, Lisboa 1200-067, Portugal",
    food_type:        "mexican",
    description: "Comida Mexicana",
    rating:       4,
    photo: "https://www.washingtonian.com/wp-content/uploads/2016/12/empanada2.jpg.optimal.jpg"
  },
  {
    name:         "El Clandestino",
    address:      "Rua da Rosa 321, Lisboa 1200-386, Portugal",
    food_type:    "mexican",
    description:  "Mexicana, Peruano, Latino",
    rating:       5,
    photo: "https://static-communitytable.parade.com/wp-content/uploads/2016/01/MexicanPizza-H.jpg"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    food_type:    "french",
    description:  "French Cuisine",
    rating:       5,
    photo: "https://www.google.pt/maps/uv?hl=pt-PT&pb=!1s0x47e66536ab659f5d:0xa21511121b2782c4!2m19!2m2!1i80!2i80!3m1!2i20!16m13!1b1!2m2!1m1!1e1!2m2!1m1!1e3!2m2!1m1!1e5!2m2!1m1!1e4!3m1!7e115!4shttps://picasaweb.google.com/lh/sredir?uname%3D102746373717847039852%26id%3D6225280981537468802%26target%3DPHOTO!5sle+pre+catelan+-+Pesquisa+Google&imagekey=!1e3!2s-NqRfUTUEcWI/VmSkEduJMYI/AAAAAAAACgM/skew2gO2Rr477-RvxRJQ1ybp1PtKw34EQCJkC&sa=X&ved=0ahUKEwjC6rjV_pfUAhWHMBoKHazPC24QoioIkwEwDg"
  },
  {
    name:         "Le pré",
    address:      "route de Suresnes 7",
    food_type:    "french",
    description: "French food",
    rating:       3,
    photo: "https://www.google.pt/maps/uv?hl=pt-PT&pb=!1s0x47f71a21a508f5f3%3A0x379a3b0ec9a53977!2m19!2m2!1i80!2i80!3m1!2i20!16m13!1b1!2m2!1m1!1e1!2m2!1m1!1e3!2m2!1m1!1e5!2m2!1m1!1e4!3m1!7e115!4shttps%3A%2F%2Fpicasaweb.google.com%2Flh%2Fsredir%3Funame%3D111999074317881192109%26id%3D6109664477711908690%26target%3DPHOTO!5sle%20pr%C3%A9%20restaurant%20-%20Pesquisa%20Google&imagekey=!1e3!2s-gQpJq-VnT2s%2FWEF0bckbNWI%2FAAAAAAAAACI%2Fbb37kN9isPMmq74gbyloz24Ca5u6dRs7wCLIB&sa=X&sqi=2&ved=0ahUKEwj_ucbuhZjUAhUBvxQKHftDBtQQoioIhQEwCg"
  },
  {
    name:         "La Siesta",
    address:      "Passeio Maritimo de Alges, Edificio La Siesta, Lisboa 1400-039, Portugal",
    food_type:        "mexican",
    description: "Mexicana Da América Central Latino Fast food Grill",
    rating:       3,
    photo: "http://www.abuelos.com/assets/uploads/2014/09/Lunch_Mexican_Stack-800x600-c-center.jpg"
  }
  {
    name:         "Taberna Portuguesa",
    address:      "Calçada do combro 115, Lisboa 1200-024, Portugal",
    food_type:    "Portuguese",
    description:  "Petiscos tradicionais Portugueses",
    rating:       5,
    photo: "https://www.zomato.com/photos/pv-res-8200771-r_NTgxNDU3MzI2Nj"
  }
  {
    name:         "Sakura Restaurante Japones Picoas",
    address:      "Rua Sousa Martins 7, Lisboa 1050 Lisboa Portugal",
    food_type:    "Japanese",
    description:  "Sushi, Sashimi e Teppanyaki",
    rating:       4,
    photo: "http://sakura-restaurante.com/sakura-picoas"
  }
  {
    name:         "Il Matricciano",
    address:      "Rua São Bento 107, Lisboa 1200-109, Portugal",
    food_type:    "Italian",
    description:  "Comida tradicional Italiana",
    rating:       5,
    photo: "https://www.google.pt/maps/uv?hl=pt-PT&pb=!1s0xd1934827402fb0d%3A0x61b93e109455fefa!2m19!2m2!1i80!2i80!3m1!2i20!16m13!1b1!2m2!1m1!1e1!2m2!1m1!1e3!2m2!1m1!1e5!2m2!1m1!1e4!3m1!7e115!4shttps%3A%2F%2Fpicasaweb.google.com%2Flh%2Fsredir%3Funame%3D116705096139744561210%26id%3D6396409040465722770%26target%3DPHOTO!5sil%20matriciano%20-%20Pesquisa%20Google&imagekey=!1e3!2s-w9484n5RblU%2FWMScIJYVHmI%2FAAAAAAAAfWY%2FR5JHKSOJhkU7OAUQkuMUmg7yfjMV4CwdwCLIB&sa=X&ved=0ahUKEwjxhdGf-pfUAhWJlxoKHcYNC9MQoioIhQEwCg"
  }
  {
    name:         "Come Prima",
    address:      "Rua Olival 258, Lisboa 1200-744, Portugal",
    food_type:    "Italian",
    description:  "Comida tradicional Italiana",
    rating:       5,
    photo: "https://www.google.pt/maps/uv?hl=pt-PT&pb=!1s0xd193498bf904399%3A0x33c494d1e2a87841!2m19!2m2!1i80!2i80!3m1!2i20!16m13!1b1!2m2!1m1!1e1!2m2!1m1!1e3!2m2!1m1!1e5!2m2!1m1!1e4!3m1!7e115!4shttps%3A%2F%2Fpicasaweb.google.com%2Flh%2Fsredir%3Funame%3D116819725772433021019%26id%3D6244467262471442146%26target%3DPHOTO!5s%20-%20Pesquisa%20Google&imagekey=!1e3!2s-YQXOgRGm48I%2FVNvEB1W6ViI%2FAAAAAAAAAJ0%2Fv_XBTXp-GN4rHHr5xks8P4izdBx9zyW-ACJkC"
  }
  {
    name:       "Restaurante Casanova",
    address:    "Av.Infante Dom Henrique Loja 7, Lisboa 1900-264, Portugal",
    food_type:   "Italian",
    description: "Pizzas Italianas",
    rating:      5,
    photo: "https://www.google.pt/maps/uv?hl=pt-PT&pb=!1s0xd1bc7bd1c840f09%3A0xcae3347c2a6cf3f8!2m19!2m2!1i80!2i80!3m1!2i20!16m13!1b1!2m2!1m1!1e1!2m2!1m1!1e3!2m2!1m1!1e5!2m2!1m1!1e4!3m1!7e115!4shttps%3A%2F%2Fpicasaweb.google.com%2Flh%2Fsredir%3Funame%3D118266073311340130572%26id%3D6386268536816778162%26target%3DPHOTO!5s%20-%20Pesquisa%20Google&imagekey=!1e3!2s-2kbVes8_uLU%2FWKCVZfk3u7I%2FAAAAAAAAAx0%2FYpPmzt7KEccpevwM_YprGiEhHLhw1b0wACLIB"
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
    username:         "thelucas15",
    age:      30,
    age_pref_start:        18,
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
    gender_pref: "female",
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
    gender_pref: "female",
    description: "feminist and hate men",
    hash_tag_pref: "#blackflower",
    email: "rer@420.com",
    password: "secret4",
    age_pref_end: 30
  }
]


User.create!(users_attributes)

