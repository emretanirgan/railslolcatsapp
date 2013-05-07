require 'spec_helper'
require 'rspec-expectations'



describe 'Adding a post' do
	it 'requires a body' do
		sign_in
		visit posts_path
		click_link "New Post"
		fill_in "Title",with: "Testing"
		click_button "Create Post"
		error_message= "Body can't be blank"
		page.has_content?(error_message)
	end
end
