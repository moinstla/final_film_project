Post.destroy_all
Comment.destroy_all

50.times do |i|
    post = Post.create!(name: Faker::TwinPeaks.character, title: Faker::TwinPeaks.quote, content: Faker::Seinfeld.quote)

  3.times do |i|
    post.comments.create!(name: Faker::Seinfeld.character, content: Faker::Seinfeld.quote)
  end
end
