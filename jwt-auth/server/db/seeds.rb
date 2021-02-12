Painting.destroy_all
User.destroy_all

paintings = [
  {
    title: "Portrait of a Carthusian",
    image:
      "https://d32dm0rphc51dk.cloudfront.net/pVc7CubFzVlPhbErTAqyYg/medium.jpg"
  },
  {
    title: "Study of a Young Woman",
    image:
      "https://d32dm0rphc51dk.cloudfront.net/pLcp7hFbgtfYnmq-b_LXvg/medium.jpg"
  },
  {
   title: "Portrait of Gerard de Lairesse",
    image:
      "https://d32dm0rphc51dk.cloudfront.net/6b4QduWxeA1kSnrifgm2Zw/medium.jpg"
  }
]


paintings.each do |p|
  Painting.create(title: p[:title], image: p[:image])
end

User.create!(email:'akram@akram.com', name: 'akram', password:'akram')
User.create!(email:'avelon@avelon.com', name: 'avelon', password:'avelon')
User.create!(email:'eric@eric.com', name: 'eric', password:'eric')
User.create!(email:'romina@romina.com', name: 'romina', password:'romina')

puts 'Fiile has been run'