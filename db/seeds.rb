# Faker::Name.name 
# Faker::Address.city
# fan_id = rand(1...11)


10.times do
    name = Faker::Name.name 
    Fan.create(name: name)
end

Festival.create(name: "EDC", location: "Las Vegas", price: 299, artist: "Rezz, Carnage, Excision", date: "05/15/2021")
Festival.create(name: "Audiotistic", location: "Los Angeles", price: 199, artist: "Drake, Eminem, NF", date: "06/15/2021")
Festival.create(name: "Madness", location: "Houston", price: 299, artist: "Rapids, Elements, Idk", date: "09/15/2021")


    
Ticket.create(name: "EDC Ticket", fan_id: 1, festival_id: 1)
Ticket.create(name: "EDC Ticket", fan_id: 2, festival_id: 1)
Ticket.create(name: "EDC Ticket", fan_id: 3, festival_id: 1)
Ticket.create(name: "EDC Ticket", fan_id: 4, festival_id: 1)
Ticket.create(name: "Audiotistic Ticket", fan_id: 5, festival_id: 2)
Ticket.create(name: "Audiotistic Ticket", fan_id: 6, festival_id: 2)
Ticket.create(name: "Audiotistic Ticket", fan_id: 7, festival_id: 2)
Ticket.create(name: "Audiotistic Ticket", fan_id: 8, festival_id: 2)
Ticket.create(name: "Audiotistic Ticket", fan_id: 9, festival_id: 2)
Ticket.create(name: "Madness Ticket", fan_id: 10, festival_id: 3)
Ticket.create(name: "Madness Ticket", fan_id: 1, festival_id: 3)
Ticket.create(name: "Madness Ticket", fan_id: 2, festival_id: 3)
Ticket.create(name: "Madness Ticket", fan_id: 3, festival_id: 3)
Ticket.create(name: "Madness Ticket", fan_id: 4, festival_id: 3)
Ticket.create(name: "Madness Ticket", fan_id: 5, festival_id: 3)
