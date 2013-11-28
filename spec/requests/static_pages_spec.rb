require 'spec_helper'

describe "Static Pages" do
  describe "Home Page" do
    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_selector('h1', :text =>'Sample App')
    end
    it "should have the rigth title " do
      visit '/static_pages/home'
      expect(page).to have_title(" | Home")
    end
  end
  describe "Help Page" do
		it "should have the content 'Help'" do
			visit '/static_pages/help'
			expect(page).to have_selector('h1', :text=>'Help')
		end
		it "should have the rigth title " do
      		visit '/static_pages/help'
      		expect(page).to have_title(" | Help")
    	end
  end
  describe "About Page" do
		it "should have the content 'About Us'" do
			visit '/static_pages/about'
			expect(page).to have_selector('h1',:text=>'About Us')
		end
		it "should have the rigth title " do
      		visit '/static_pages/about'
      		expect(page).to have_title(" | About")
    	end
  end
end