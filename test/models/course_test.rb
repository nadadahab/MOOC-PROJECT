require 'test_helper'

class CourseTest < ActiveSupport::TestCase
   test "the truth" do
   course = Course.new(title: 'Java', user_id: 1)
   assert_equal 'Java', course.title
   assert_equal 1, course.user_id
   end
end
