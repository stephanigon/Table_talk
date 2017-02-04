require 'rails_helper'

describe 'navigate' do
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
			fill_in 'post[description]', with: "some rationale"

			click_button 'Create Post'

			expect(page).to have_content("some rationale")
		end
	end
end