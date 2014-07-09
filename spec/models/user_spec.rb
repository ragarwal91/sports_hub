require 'rails_helper'

describe User do
  let(:ranjan) {User.create(
    username: "testuser",
    first_name: "Ranjan",
    password: "test123",
    password_confirmation: "test123"
    )}
    it {is_expected.to validate_presence_of :username}
    it {is_expected.to validate_presence_of :first_name}
    it {is_expected.to validate_presence_of :email_address}
    it {is_expected.to validate_presence_of :password}
end
