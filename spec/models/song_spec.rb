require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "validations" do
    let(:artist) { create :artist }
    let!(:song) { create :song, artist: artist }

    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:release_date) }
    it { is_expected.to validate_numericality_of(:rating).is_at_most(5) }
  end

    describe "order songs by name in acending order" do
      let!(:song1) {create :song, title:"Alabama"}
      let!(:song2) {create :song, title:"Ruby, ruby, ruby!"}
      let!(:song3) {create :song, title:"Bonus track"}

      it "returns an ordered list of songs from a to z" do
        expect(Song.order_by_price).to match_array [song1, song2, song3]
      end
    end

    describe "order songs by name in decending order" do
      let!(:song1) {create :song, title:"Alabama"}
      let!(:song2) {create :song, title:"Ruby, ruby, ruby!"}
      let!(:song3) {create :song, title:"Bonus track"}

      it "returns an ordered list of songs from z to a" do
        expect(Song.order_by_price).to match_array [song3, song2, song1]
      end
    end

end
