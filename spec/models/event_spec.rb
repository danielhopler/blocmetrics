require 'rails_helper'

RSpec.describe Event, type: :model do
  let(:my_registered_application) { RegisteredApplication.create!(name: "New Application", url:"blocmetrics.test@example.com", user: my_user)}
  let(:my_user) {User.create!(username: "test_user", email: "test_user@example.com", password: "password")}
  let(:my_event) { Event.create!(name: "Test Event", registered_application: my_registered_application) }

  describe "attributes" do
    it "has a name attribute" do
      expect(my_event).to have_attributes(name: "Test Event")
    end
  end
end
