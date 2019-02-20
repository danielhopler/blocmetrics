require 'rails_helper'

RSpec.describe RegisteredApplication, type: :model do
  let(:my_registered_application) { RegisteredApplication.create!(name: "New Application", url:"blocmetrics.test@example.com", user: my_user)}
  let(:my_user) {User.create!(username: "test_user", email: "test_user@example.com", password: "password")}

  it { is_expected.to belong_to(:user) }
  it {is_expected.to validate_presence_of(:name)}
  it {is_expected.to validate_presence_of(:url)}
  it {is_expected.to validate_presence_of(:user)}

  describe "attributes" do
    it "has name, url, and user attributes" do
      expect(my_registered_application).to have_attributes(name: "New Application", url:"blocmetrics.test@example.com", user: my_user)
    end
  end
end
