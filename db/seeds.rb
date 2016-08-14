# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Category.create(name: 'I')
Category.create(name: 'Love')
Category.create(name: 'RoR')

Place.create(name: 'Dükkan 1', address: 'Los Angeles',established_at: '1997',phone_number: '+90 123-455-7899',contract_mail: 'dükkan@place.com',city: 'Tosya',description: 'Açıklmamam',category_id: 1)
Place.create(name: 'Dükkan 2', address: 'Los Angeles',established_at: '1997',phone_number: '+90 123-455-7899',contract_mail: 'dükkan@place.com',city: 'Tosya',description: 'Açıklmamam',category_id: 3)
Place.create(name: 'Dükkan 3', address: 'Los Angeles',established_at: '1997',phone_number: '+90 123-455-7899',contract_mail: 'dükkan@place.com',city: 'Tosya',description: 'Açıklmamam',category_id: 2)
Place.create(name: 'Dükkan 4', address: 'Los Angeles',established_at: '1997',phone_number: '+90 123-455-7899',contract_mail: 'dükkan@place.com',city: 'Tosya',description: 'Açıklmamam',category_id: 2)
Place.create(name: 'Dükkan 5', address: 'Los Angeles',established_at: '1997',phone_number: '+90 123-455-7899',contract_mail: 'dükkan@place.com',city: 'Tosya',description: 'Açıklmamam',category_id: 1)
Place.create(name: 'Dükkan 6', address: 'Los Angeles',established_at: '1997',phone_number: '+90 123-455-7899',contract_mail: 'dükkan@place.com',city: 'Tosya',description: 'Açıklmamam',category_id: 3)
Place.create(name: 'Dükkan 7', address: 'Los Angeles',established_at: '1997',phone_number: '+90 123-455-7899',contract_mail: 'dükkan@place.com',city: 'Tosya',description: 'Açıklmamam',category_id: 2)
Place.create(name: 'Dükkan 8', address: 'Los Angeles',established_at: '1997',phone_number: '+90 123-455-7899',contract_mail: 'dükkan@place.com',city: 'Tosya',description: 'Açıklmamam',category_id: 1)


Comment.create(body: 'fqepıfwpgjwıf ewıpfj eowpf pweıj ewpfj ', place_id: 1)
