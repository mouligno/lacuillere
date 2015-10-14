Restaurant.destroy_all if Rails.env.development?

restaurants_attributes = [{
    name: "O'Passage",
    address: 'Rue Saint Etienne 59800 Lille',
    phone_number: '03 20 06 14 78' ,
    category: 'french'
  },{
    name: "Fresh Burritos",
    address: "78 rue de l'Hôpital Militaire 59000 Lille",
    phone_number: '03 20 60 58 14' ,
    category: 'french'
  },{
    name: "Les Domaines Qui Montent",
    address: "69 rue de l'Hôpital Militaire 59800 Lille",
    phone_number: '09 67 03 86 47' ,
    category: 'french'
  },{
    name: "Peek A Boo",
    address: "92 rue de l'Hôpital Militaire 59000 Lille",
    phone_number: '03 20 57 05 15' ,
    category: 'belgian'
  },{
    name: "Love Italy",
    address: "64 rue de l'Hôpital Militaire 59000 Lille",
    phone_number: '03 20 42 44 90' ,
    category: 'italian'
}]

restaurants_attributes.each { |restaurant| Restaurant.create!(restaurant) }
