# require 'test_helper'

# class PostTest < ActiveSupport::TestCase
#   def setup
#     @post = Post.new(content: "I'm a post :)")
#   end

#   # validate post content
#   test "post content should be present (nonblank)" do 
#     @post.content = "    " * 10
#     assert_not @post.valid?
#   end

#   test "post content should have a minimum length" do 
#     @post.content = "a" * 4
#     assert_not @post.valid?
#   end

#   test "post content should have more than one word" do 
#     @post.content = "qwerty"
#     assert_not @post.valid?
#   end

#   test "post content should have a maximum length" do 
#     @post.content = "a" * 501
#     assert_not @post.valid?
#   end

# end
