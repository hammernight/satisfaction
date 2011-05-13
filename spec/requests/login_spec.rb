require 'spec_helper'

describe "Login" do
  let(:user) {Factory :user}

  before do
    visit '/'
  end

  it 'allows a user to login' do
    fill_in 'Login', :with => user.email
    fill_in 'Password', :with => user.password
  end
end
