require 'spec_helper'

	
describe "Static Pages" do 

	subject { page }

	shared_examples_for 'all static pages' do 
		it { should have_selector('h1', text: heading) }
		it { should have_title(full_title(page_title)) }
	end

	describe "Homepage" do
		before { visit root_path }
		let(:heading)		{'Home'}
		let(:page_title){''}

		it_should_behave_like 'all static pages'
		it { should_not have_title('| Home') }
	end

	describe "Help Page" do 
		before { visit help_path}
		let(:heading)		{'Help'} 
		let(:page_title){'Help'}

		it_should_behave_like 'all static pages'
	end	

	describe "About Page" do 
		before { visit about_path }
		let(:heading)		{'About'} 
		let(:page_title){'About'}

		it_should_behave_like 'all static pages'
	end

	describe "Contact Page" do 
		before { visit contact_path }
		let(:heading)			{'Contact'}
		let(:page_title)	{'Contact'}

		it_should_behave_like 'all static pages'
	end

	it 'should have the right links on the layouts' do
		visit root_path
		click_link "About"
		expect(page).to have_title(full_title('About'))
		click_link "Help"
		expect(page).to have_title(full_title('Help'))
		click_link "Contact"
		expect(page).to have_title(full_title('Contact'))
		click_link "Home"
		expect(page).to have_title(full_title(''))
		click_link "SIGN UP"
		expect(page).to have_title(full_title('Sign up'))
	end

end
