require 'spec_helper'


describe "Static pages" do
	
  let(:base_title) { "Sample App" }
  describe "Home page" do
    it "should have the content 'Sample App'" do
	visit root_path
	page.should have_content('Sample App')
    end
    it "should have the right title" do
      visit root_path
      page.should_not have_selector('title', :text => "#{base_title} | Home")
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
	visit help_path
	page.should have_content('Help')
    end
    it "should have the right title" do
      visit help_path
      page.should have_selector('title', :text => "#{base_title} | Help")
    end
  end


  describe "About" do
    it "should have the content 'About'" do
	visit about_path
	page.should have_content('About')
    end
    it "should have the right title" do
      visit about_path
      page.should have_selector('title', :text => "#{base_title} | About")
    end
  end


  describe "Contact" do
    it "should have the content 'Contact'" do
	visit contact_path
	page.should have_content('Contact')
    end
    it "should have the right title" do
      visit contact_path
      page.should have_selector('title', :text => "#{base_title} | Contact")
    end
  end
end
