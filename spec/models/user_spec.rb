require 'rails_helper'

RSpec.describe User, type: :model do
  it "generates an encrypted password" do
    u = FactoryGirl.build(:user)
    expect(u.encrypted_password).to match ""
    u = FactoryGirl.create(:user)
    expect(u.encrypted_password).not_to equal ""
  end

end
