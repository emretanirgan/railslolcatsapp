require 'spec_helper'

describe Post do
  it "should require rating, body, title, date" do
  	subject.should_not be_valid
  	subject.rating = 3
  	subject.title = "Bla"
  	subject.body = "Body"
  	subject.should be_valid
  end
end
