require 'spec_helper'

describe "User login" do
  before do
    #visit root_path
  end

  subject { page }

  describe "should be an invalid login" do
    before do
      #set_invalid_omniauth()
      #click_link "Sign in with Facebook"
    end
    it "should be an invalid login",:js => true do
      pending "approval"
      #should have_content "Sign in with Facebook"
      #should_not have_content "Logout"
    end
  end
end
