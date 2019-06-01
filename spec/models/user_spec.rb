require 'rails_helper'

RSpec.describe User, type: :model do
  describe "creation" do

    it "can be created" do
      user = Users.create(email: "test@test.com", password: "gogo", password_confirmation: "gogo", first_name: "jon", last_name: "Snow")
    end

    it "can be created" do

      expect(user).to be_valid
    end

    it "cannot be creaated without first_name, last_name," do
      @user.first_name = nil
      @user.last_name = nil
      expect(@user).to_not be_valid 



    end
  end
end
