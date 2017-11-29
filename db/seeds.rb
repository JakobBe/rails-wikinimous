puts "Strat seeding"

Article.destroy_all

10.times do
  article = Article.new(title: Faker::StarWars.character, content: Faker::StarWars.quote)

  puts "#{article.title} saved!" if article.save
end

puts "Seeding finished!"
