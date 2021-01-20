# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Jungle.destroy_all

puts "Database clean!"

Jungle.create(
  name: 'Milas jungle',
  banner_url: 'https://images.unsplash.com/photo-1530968561612-341586ef608a?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=1950&q=80'
)



Jungle.create(
  name: 'Chicha\'s Jungle',
  banner_url: 'https://images.unsplash.com/photo-1604762525827-61f629d82f1e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1950&q=80'
)

Jungle.create(
  name: 'Frank\'s Secret Garden',
  banner_url: 'https://images.unsplash.com/photo-1552758070-02c40ecffd5b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1526&q=80'
)

Jungle.create(
  name: 'Carla\'s Urban Oasis',
  banner_url: 'https://images.unsplash.com/photo-1544860707-c352cc5a92e3?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1915&q=80'
)


Jungle.create(
  name: 'Joe\'s Jungle',
  banner_url: 'https://images.unsplash.com/photo-1603436326363-e4693ce2757c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80'
)


Jungle.create(
  name: 'Jungle of Chio',
  banner_url: 'https://images.unsplash.com/photo-1591870510340-c8578d6c3b5f?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=2734&q=80'
)

Jungle.create(
  name: 'Jungle of Paul',
  banner_url: 'https://images.unsplash.com/photo-1591870510340-c8578d6c3b5f?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=2734&q=80'
)



puts "#{Jungle.count} jungles created."

# tags = ["Fern", 'Succulent', 'Flower', 'Palm', 'Evergreen', 'Deciduous']

# tags.each do |tag|
#   Tag.create!(name: tag)
# end
# puts "#{Tag.count} tags created."
# puts "Done!"


