@user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Black", last_name: "Widow")

puts "1 User created"

5.times do |post|
	Post.create!(title: "Hello", description: "asdfasdfsdkfjsldkfjaskdlfjsdkjfasdklfj", user_id: @user.id)
end

puts "5 Posts have been created"