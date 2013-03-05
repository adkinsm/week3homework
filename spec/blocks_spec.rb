$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require 'week3'

describe 'Week3 block method' do

  subject{ Week3.new }

  # TODO: Write the spec and the code
  it '#run_me yields to a block' do
    text = subject.run_me {|value| "Name = #{value}"}
    text.should eq "Name = Brandon"
  end

  # TODO: Write the spec and the code
  # method should take one parameter, an array of integers.
  #   ok to assume items are integers.
  # the method should return an array of integers.
  #   but it should ignore the even items.
  # method is an iterator, like #each, that goes through each item
  #   in the array passed in.
  # block can be the second parameter, or implicit.
  it '#each_odd iterates an array and yields the odd values to the block' do
    input = [1,2,3,4]
    expected = [1,3]
    subject.each_odd {|input| input%2 != 0}
    input.should eq expected
  end

end

