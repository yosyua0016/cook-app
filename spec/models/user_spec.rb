require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    it "should validate presence of name" do
      user = User.new(name: nil)
      user.valid?
      expect(user.errors[:name]).to include("can't be blank")
    end

    it "should validate presence of email" do
      user = User.new(email: nil)
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end
  end
end