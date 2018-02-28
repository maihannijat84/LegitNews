# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

for i in 1..50

  name = Faker::Name.first_name
  email = Faker::Internet.free_email(name)

  user = User.new
  user.name = name
  user.email = email

  if user.save
    title = Faker::Lorem.sentence
    content = Faker::Lorem.paragraph(2)

    article = Article.new
    article.user = user
    article.title = title
    article.content = content

    if article.save
        for ii in 1..10
          message = Faker::Lorem.sentence

          comment = Comment.new
          comment.message = message

      end
    end
  end
end