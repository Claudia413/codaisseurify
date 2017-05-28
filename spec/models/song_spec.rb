require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "validations" do
    let(:artist) { create :artist }
    let!(:song) { create :song, artist: artist }

    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:release_date) }
  end
end
