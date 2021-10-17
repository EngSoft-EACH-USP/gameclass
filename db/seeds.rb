# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
    username: "admin",
    password: "admin",
    name: 'Administradores dos GameClass',
    kind: :admin
)

User.create(
    username: "coach",
    password: "coach",
    name: 'Professor do GameClass',
    kind: :coach
)

User.create(
    username: "learner",
    password: "learner",
    name: 'Aprendiz do GameClass',
    kind: :learner
)

Coach.create(
    user_id: 2,
    game: 'lol',
    description: 'Professor há mais de 10 anos de lol, challenger',
    whatsapp: 11980770907
)