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
    name: 'Administradores do GameClass',
    kind: :admin
)

coach = User.create(
    username: "coach",
    password: "coach",
    name: 'Professor do GameClass',
    kind: :coach
)

learner = User.create(
    username: "learner",
    password: "learner",
    name: 'Aprendiz do GameClass',
    kind: :learner
)

Coach.create(
    user: coach,
    game: 'lol',
    description: 'Professor há mais de 10 anos de lol, challenger',
    whatsapp: 11980770907
)

AffiliateRequest.create(
    user: learner,
    description: 'Sou muito bom no lol cara pfvr...',
    status: :pending
)

# Evite usar ids fixos nos seeds, ou isso pode levar a inconsistências no banco de dados.