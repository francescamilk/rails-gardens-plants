puts 'Clearing the db...'
Garden.destroy_all

puts 'Creating gardens...'
italian_garden = Garden.new(
  name: 'Italian garden', 
  banner_url: 'https://www.gardenia.net/storage/app/public/guides/detail/15452682198_e8377b883f_zOptimized.webp'
)
italian_garden.save!

puts 'Creating plants...'
rose_plant = Plant.new(
  name: 'Rose',
  banner_url: 'https://cdn.shopify.com/s/files/1/0820/3859/products/Roses-Red-small_grande.jpg?v=1429062643',
  garden: italian_garden
)
rose_plant.save!

olive_tree = Plant.new(
  name: 'Olive tree',
  banner_url: 'https://gardenerspath.com/wp-content/uploads/2018/07/Olives-Are-Easy-to-Grow-in-the-Right-Location.jpg',
  garden: italian_garden
)
olive_tree.save!

puts 'Done!'
