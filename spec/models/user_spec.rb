require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
  	@user = User.create!(email: "aziz@gmail.com", password: "aaaaaaaa")
  end
  
  describe "creation" do
  	it "should have created one user" do
  		expect(User.all.count).to eq(1)
  	end
  end	

  describe "validate" do
  	it "should not let a user be created if the email is nil" do
  		@user.email = nil
  		expect(@user).to_not be_valid
  	end
  	it "should not let a user be created if the password is nil" do
  		@user.password = nil
  		expect(@user).to_not be_valid
  	end
  end
end


require 'rails_helper'

RSpec.describe Link, type: :model do
  describe 'create' do
    it 'creates a new link successfully' do
      link = Link.new(title: 'Test link', url: 'www.testlink.com')
      expect(link.save).to be_truthy
    end
  end
end