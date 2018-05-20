require 'test_helper'
class UserTest < ActiveSupport::TestCase
   test "the truth" do
   user = User.new(name: 'nada', email: 'nada@gmail.com',is_female:1,role:'user')
   assert_equal 'nada', user.name
   assert_equal 'nada@gmail.com', user.email
   assert_equal 1, user.is_female
   assert_equal 'user', user.role
   end
end
