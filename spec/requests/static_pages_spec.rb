require 'spec_helper'

	describe "Static Pages" do 

		describe "Homepage" do 

			it "should have the content 'Home' " do
				visit '/static_pages/home'
				expect(page).to have_content('Home') 
		end

		it "should have the right title Home" do 
				visit '/static_pages/home'
				expect(page).to have_title('Home')
			end
	end

		describe "Help Page" do 
			it "should have the string 'Help' " do
				visit '/static_pages/help' 
				expect(page).to have_content('Help')
			end

			it "should have the right title Help" do 
				visit '/static_pages/help'
				expect(page).to have_title('Help')
			end
		end	

		describe "About Page" do 
			it "should have the content 'About' " do 
				visit '/static_pages/about' 
				expect(page).to have_content('About')
			end
		
			it "should have the right title About" do
				visit '/static_pages/about' 
				expect(page).to have_title('About')
			end
		end
end
