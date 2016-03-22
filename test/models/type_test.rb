require 'test_helper'

class TypeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Type attributes must not be empty" do 
  	type = Type.new
  	assert type.invalid?
  	assert type.errors[:name].any?
  end
end
