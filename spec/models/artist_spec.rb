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

end
