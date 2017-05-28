

Artist.destroy_all
Song.destroy_all

artist1 = Artist.create(name:"Duke Ellington")
artist2 = Artist.create(name:"Miles Davis")
artist3 = Artist.create(name:"Nat King Cole")
artist4 = Artist.create(name:"Oliver Nelson")
artist5 = Artist.create(name:"Disney songs")
artist6 = Artist.create(name:"John Coltrane")

song1 = Song.create(title:"In a sentimental mood", rating: 4, release_date: 500.days.ago, artist: artist1)
song2 = Song.create(title:"It never entered my mind", rating: 5, release_date: 900.days.ago, artist: artist2)
song3 = Song.create(title:"Nature boy", rating: 5, release_date: 500.days.ago, artist: artist3)
song4 = Song.create(title:"Stolen moments", rating: 3, release_date: 850.days.ago, artist: artist4)
song5 = Song.create(title:"So", rating: 4, release_date: 580.days.ago, artist: artist1)
song6 = Song.create(title:"It could happen to you", rating: 3, release_date: 940.days.ago, artist: artist2)
song7 = Song.create(title:"Mona Lisa", rating: 3, release_date: 520.days.ago, artist: artist3)
song8 = Song.create(title:"Hakuna Mattata", rating: 1, release_date: 650.days.ago, artist: artist5)
song9 = Song.create(title:"So what", rating: 4, release_date: 580.days.ago, artist: artist6)
song10 = Song.create(title:"The circle of life", rating: 3, release_date: 940.days.ago, artist: artist5)
song11 = Song.create(title:"I just can't wait to be king", rating: 3, release_date: 520.days.ago, artist: artist5)
song12 = Song.create(title:"Zero to hero", rating: 1, release_date: 650.days.ago, artist: artist5)
