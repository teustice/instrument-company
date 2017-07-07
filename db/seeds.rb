User.destroy_all
Instrument.destroy_all
Review.destroy_all

50.times do |index|
  newUser = User.create(email: Faker::Internet.email,
                        password: Faker::Internet.password(10, 20))


  newInstrument = Instrument.create(brand: Faker::Music.instrument,
                        price: Faker::Number.decimal(2),
                        description: Faker::Lorem.paragraph(2))

  3.times do
    newInstrument.reviews.create(
      author: newUser.email,
      title: "This reminds me of #{Faker::RockBand.name}",
      content: "beansbeansbeansbeansbeansbeansbeansbeansbeansbeansbeansbeansbeansbeansbeansbeans",
      rating: Faker::Number.between(1, 5),
      user_id: newUser.id)
  end
end
# create admin
User.create(email: 'admin@admin',
                      password: 'password',
                      admin: true)

p "Created #{User.count} users"
p "Created #{Instrument.count} instruments"
p "Created #{Review.count} reviews"
