require 'rails_helper'

describe Artist, type: :model do
    describe "association with song" do
    let(:artist) { create :artist }
    let!(:song) { create :song, artist: artist }

    it "deletes associated songs" do
        expect { artist.destroy }.to change(Song, :count).by(-1)
    end

    it "has many songs" do
      song1 = artist.songs.new(title: "Wonderful world")
      song2 = artist.songs.new(title: "Hakuna Matatta")

      expect(artist.songs).to include(song1)
      expect(artist.songs).to include(song2)
    end
  end

  describe "order artists by name in acending order" do
    let!(:artist_a) {create :artist, name:"Alan"}
    let!(:artist_b) {create :artist, name:"Rihanna!"}
    let!(:artist_c) {create :artist, name:"Beyonce"}

    it "returns an ordered list of artists from a to z" do
      expect(Artist.order_by_name).to eq [artist_a, artist_c, artist_b]
    end
  end

  describe "order artists by name in decending order" do
    let!(:artist_a) {create :artist, name:"Alan"}
    let!(:artist_b) {create :artist, name:"Rihanna!"}
    let!(:artist_c) {create :artist, name:"Beyonce"}

    it "returns an ordered list of artists from z to a" do
      expect(Artist.order_by_name_reverse).to eq [artist_b, artist_c, artist_a]
    end
  end
end
