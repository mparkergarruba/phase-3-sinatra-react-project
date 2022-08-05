puts "🌱 Seeding spices..."
15.times do
    athlete = Athlete.create(
        name: Faker::Sports::Basketball.unique.player,
        team: Faker::Sports::Basketball.team,
        age: rand(18..39)
    )
end

15.times do
    sponsor = Sponsor.create(
        name: Faker::Company.name,
        industry: Faker::Company.industry,
        logo: Faker::Company.logo,
        statement: Faker::Company.catch_phrase
    )
end

20.times do
    deal = Deal.create(
        annual_amount: rand(25..500)*10000,
        year_term: rand(1..6),
        athlete_id: rand(1..15),
        sponsor_id: rand(1..15)
    )
end

puts "✅ Done seeding!"
