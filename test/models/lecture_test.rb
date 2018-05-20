require 'test_helper'

class LectureTest < ActiveSupport::TestCase
  test "the truth" do
   lecture = Lecture.new(content: 'lec1 part1',course_id:1)
   assert_equal 'lec1 part1', lecture.content
   assert_equal 1, lecture.course_id
  end
end

