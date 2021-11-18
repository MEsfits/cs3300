require "rails_helper"

RSpec.describe User, type: :model do
  context "validations tests" do
    it "ensures the email is present" do
      user = User.new(email: "test@mail.com")
      expect(user.valid?).to eq(false)
    end

    it "ensures the password is present" do
      user = User.new(password: "123456", password_confirmation: '123456')
      expect(user.valid?).to eq(false)
    end

    it "should be able to save user" do
      user = User.new(email: "test@mail.com", password: "123456", password_confirmation: '123456')
      expect(user.save).to eq(true)
    end
  end
end