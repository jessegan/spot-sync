require 'rails_helper'

RSpec.describe SpotifyCredential, type: :model do
  
  describe "Validations" do

    let(:valid_attributes) { { access_token: "XXXXX", refresh_token: "XXXXXX", expiration_time:"XXXXXXXX" } }
    
    it "is valid with valid attributes" do
      spotify_credential = SpotifyCredential.new(valid_attributes)

      expect(spotify_credential).to be_valid
    end
    
    it "is invalid without valid access_token" do
      spotify_credential = SpotifyCredential.new(valid_attributes.except(:access_token))
      
      expect(spotify_credential).not_to be_valid
    end

    it "is invalid without valid refresh_token" do
      spotify_credential = SpotifyCredential.new(valid_attributes.except(:refresh_token))

      expect(spotify_credential).not_to be_valid
    end

    it "is invalid without valid expiration_time" do
      spotify_credential = SpotifyCredential.new(valid_attributes.except(:expiration_time))

      expect(spotify_credential).not_to be_valid
    end

  end

end