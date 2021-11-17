Então('eu deveria ver o devido coach') do
  expect(page).to have_content @coach.user.name
end