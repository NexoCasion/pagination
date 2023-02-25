# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

1500.times do
    Comida.create(
        nome: Faker::Food.fruits,
        desc: Faker::Food.description,
        price: Faker::Number.decimal(l_digits: 2),
        quantidade: Faker::Number.between(from: 1, to: 1000),
        estragado: Faker::Boolean.boolean,
        compra: Faker::Date.between(from: '2022-01-01', to: Time.now),
        vencimento: Faker::Date.between(from: Time.now, to: Time.now + (60 * 60 * 24 * 30 * 12 * 8)),
    )
end
Comida.all.each do |comida|
    puts comida.nome
end