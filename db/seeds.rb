class Seed


  def self.begin
    seed = Seed.new
    seed.generate_posts
  end

  def generate_posts
    50.times do |i|
        post = Post.create!(name: Faker::TwinPeaks.character, title: Faker::TwinPeaks.quote, content: Faker::Lorem.paragraph(3))
    end
  end
end

Seed.begin
