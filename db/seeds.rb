# Usuário principais dos quais saberemos senha e login

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

Coach.create(
  user: coach,
  game: 'lol',
  description: 'Professor há mais de 10 anos de lol, challenger',
  whatsapp: 11980770907
)

learner = User.create(
    username: "aluno",
    password: "aluno",
    name: 'Aprendiz do GameClass',
    kind: :learner
)

AffiliateRequest.create(
    user: learner,
    description: FFaker::LoremBR.sentence(15),
    status: :pending
)

# Cria 25 solicitações de afiliação
25.times do
  req = AffiliateRequest.new do |req|
    user = User.create do |user|
      user.name = FFaker::NameBR.name
      user.username = FFaker::Internet.user_name
      user.password = '1234'
      user.kind = :learner
    end
    req.user_id = user.id
    req.description = FFaker::LoremBR.sentence 15
  end
  req.save
  p req
end

# Cria 25 registros de coach
25.times do
  coach = Coach.new do |coach|
    user = User.create do |user|
      user.name = 'Professor ' + FFaker::NameBR.name
      user.username = FFaker::Internet.user_name
      user.password = '1234'
      user.kind = :coach
    end
    coach.user_id = user.id
    coach.game = %w[ LeagueOfLegends Dota2 CSGO QuakeChampions DoomEternal ].sample
  end
  coach.save
  p coach
end

# Evite usar ids fixos nos seeds, ou isso pode levar a inconsistências no banco de dados.