

Artist.destroy_all
Song.destroy_all
Photo.destroy_all

photo_miles = Photo.create(remote_image_url: "http://res.cloudinary.com/hedgehogs4578/image/upload/v1496215479/Miles-Davis-Freedom-Jazz-Review_jdrba6.jpg")
photo_duke = Photo.create(remote_image_url:"http://res.cloudinary.com/hedgehogs4578/image/upload/v1496215508/318_125706311135_o5oipg.jpg")
photo_john = Photo.create(remote_image_url: "http://res.cloudinary.com/hedgehogs4578/image/upload/v1496215540/john-coltrane-france-651_xuo33u.jpg")
photo_nat = Photo.create(remote_image_url: "http://res.cloudinary.com/hedgehogs4578/image/upload/v1496215582/mtv.com__sdv3bq.jpg")
photo_oliver = Photo.create(remote_image_url: "http://res.cloudinary.com/hedgehogs4578/image/upload/v1496215656/Oliver_Nelson_aoflkz.jpg")
photo_disney = Photo.create(remote_image_url: "http://res.cloudinary.com/hedgehogs4578/image/upload/v1496215705/046a75683843701a7ea67b31af5d2a61_aztavm.jpg")


artist1 = Artist.create(name:"Duke Ellington", photos: [photo_duke])
artist2 = Artist.create(name:"Miles Davis", photos: [photo_miles])
artist3 = Artist.create(name:"Nat King Cole", photos: [photo_nat])
artist4 = Artist.create(name:"Oliver Nelson", photos: [photo_oliver])
artist5 = Artist.create(name:"Disney songs", photos: [photo_disney])
artist6 = Artist.create(name:"John Coltrane", photos: [photo_john])

song1 = Song.create(title:"In a sentimental mood", release_date: 500.days.ago, artist: artist1)
song2 = Song.create(title:"It never entered my mind", release_date: 900.days.ago, artist: artist2)
song3 = Song.create(title:"Nature boy", release_date: 500.days.ago, artist: artist3)
song4 = Song.create(title:"Stolen moments", release_date: 850.days.ago, artist: artist4)
song5 = Song.create(title:"So", release_date: 580.days.ago, artist: artist1)
song6 = Song.create(title:"It could happen to you", release_date: 940.days.ago, artist: artist2)
song7 = Song.create(title:"Mona Lisa", release_date: 520.days.ago, artist: artist3)
song8 = Song.create(title:"Hakuna Mattata", release_date: 650.days.ago, artist: artist5)
song9 = Song.create(title:"So what", release_date: 580.days.ago, artist: artist6)
song10 = Song.create(title:"The circle of life", release_date: 940.days.ago, artist: artist5)
song11 = Song.create(title:"I just can't wait to be king", release_date: 520.days.ago, artist: artist5)
song12 = Song.create(title:"Zero to hero", release_date: 650.days.ago, artist: artist5)
