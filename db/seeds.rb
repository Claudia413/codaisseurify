

Artist.destroy_all
Song.destroy_all

artist1 = Artist.create(name:"Duke Ellington")
artist2 = Artist.create(name:"Miles Davis")
artist3 = Artist.create(name:"Nat King Cole")
artist4 = Artist.create(name:"Oliver Nelson")
artist3 = Artist.create(name:"Paul Desmond")
artist4 = Artist.create(name:"John Coltrane")

song1 = Song.create(title:"In a sentimental mood", rating: 4, release_date: 500.days.ago, artist: artist1)
song2 = Song.create(title:"It never entered my mind", rating: 5, release_date: 900.days.ago, artist: artist2)
song1 = Song.create(title:"Nature boy", rating: 5, release_date: 500.days.ago, artist: artist3)
song2 = Song.create(title:"Stolen moments", rating: 3, release_date: 850.days.ago, artist: artist4)
