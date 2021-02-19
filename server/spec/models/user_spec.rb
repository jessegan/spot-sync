require 'rails_helper'

RSpec.describe User, type: :model do

  describe "Validations" do 

    let(:valid_attributes) { { display_name: "test user", spotify_link: "www.test.com" } }
    let(:missing_display_name) { { spotify_link: "www.test.com" } }
    let(:missing_spotify_link) { { display_name: "test user" } }

    it "is valid with valid attributes" do
      user = User.new(valid_attributes)

      expect(user).to be_valid
    end
    
    it "is not valid wihtout a display_name" do
      user = User.new(missing_display_name)

      expect(user).to be_valid
    end

    it "is not valid without a spotify_link" do
      user = User.new(missing_spotify_link)

      expect(user).to be_valid
    end

  end

end
