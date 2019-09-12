# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
tv = Faker::TvShows::GameOfThrones
article = Article.create(title: tv.quote, text: tv.quote)
100.times do
  Article.create(title: tv.quote, text: tv.quote)
end
1000.times do 
  article.comments.create(commenter: tv.character, body: tv.quote)
end

Article.all.each do |a|
  20.times do
    a.comments.create(commenter: tv.character, body: tv.quote)
  end
end
