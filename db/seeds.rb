
Comment.delete_all
User.delete_all
Company.delete_all

5.times {
  company = Company.create(name: Faker::Name.name)

  10.times {
    user = User.create(email: Faker::Internet.email, name: Faker::Name.name, company: company)

    8.times {
      Comment.create(
        title: LeroleroGenerator.sentence,
        body: LeroleroGenerator.paragraph,
        user: user
      )
    }
  }
}
