FactoryGirl.define do
	factory :post do
		title "My Amazing Blog Post"
		description "Some Stuff"
		user
end

	factory :second_post, class: "Post" do
		title "Another Great Blog Post"
		description "Some more content"
		user
	end
end