require 'rails_helper'

describe 'navigate' do
	before do
		@user = FactoryGirl.create(:user)
		login_as(@user, :scope => :user)
	end

	describe 'index' do
		before do
			visit posts_path
		end

		it 'can be reached successfully' do
			expect(page.status_code).to eq(200)
		end

		it 'has a title of Posts' do
			expect(page).to have_content(/Posts/)
		end

		it 'has a list of posts' do
			post1 = FactoryGirl.create(:post)
			post2 = FactoryGirl.create(:second_post)
			visit posts_path
			expect(page).to have_content(/Stuff|content/)
		end
	end

	describe 'creation' do
		before do
			visit new_post_path
		end

		it 'has a new form that can be reached' do
			expect(page.status_code).to eq(200)
		end

		it 'can be created from new form page' do
			visit new_post_path

			fill_in 'post[title]', with: "asdfasdf"
			#page.attach_file('Image', 'app/assets/images/4.jpg') 
			fill_in 'post[description]', with: "some text"

			click_button 'Create Post'

			expect(page).to have_content("some text")
		end

		it 'will have a user associated with it' do
			fill_in 'post[title]', with: "asdfasdf"
			#page.attach_file('Image', 'app/assets/images/4.jpg') 
			fill_in 'post[description]', with: "User Association"
			
			click_button 'Create Post'

			expect(User.last.posts.last.description).to eq("User Association")
		end
	end
end