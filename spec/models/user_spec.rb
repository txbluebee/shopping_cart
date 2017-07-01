require 'rails_helper'

RSpec.describe User, type: :model do
  it "sends an email when the user is created" do
    user = FactoryGirl.create(:user)
    UserMailer.deliveries.last.to.should eq [user.email]
  end
end
