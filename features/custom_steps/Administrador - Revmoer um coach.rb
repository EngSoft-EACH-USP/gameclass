Então "o coach deveria ser devidamente deletado" do
  coach = Coach.find_by_id @coach.id
  expect(coach).to eq nil
end