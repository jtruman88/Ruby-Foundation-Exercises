require 'minitest/autorun'

require_relative 'text'

class TextTest < Minitest::Test
  def setup
    @swapped_file = File.open('sample_swapped.txt', 'r')
    @sample_file = File.open('sample_text.txt', 'r')
    @text = Text.new(@sample_file.read)
  end
  
  def test_swap
    assert_equal(@swapped_file.read, @text.swap('a', 'e'))
  end
  
  def test_word_count
    assert_equal(72, @text.word_count)
  end
  
  def teardown
    @sample_file.close
    @swapped_file.close
    puts "Sample file closed: #{@sample_file.closed?}"
    puts "Swapped file closed: #{@swapped_file.closed?}"
  end
end

=begin

#9
For this exercise you'll be given a sample text file and a starter class. The sample text's contents will be saved as a String to an instance variable in the starter class.

The Text class includes a #swap method that can be used to replace all occurrences of one letter in the text with another letter. And for this exercise we will swap all occurrences of 'a' with 'e'.

Your task is to write a test suite for class Text. In that test suite write a test for the Text method swap. For this exercise, you are required to use the minitest methods #setup and #teardown. The #setup method contains code that will be executed before each test; #teardown contains code that will be executed after each test.

#10
Recall that in the last exercise we only had to test one method of our Text class. One of the useful facets of the setup and teardown methods is that they are automatically run before and after each test respectively. To show this we'll be adding one more method to our Text class, word_count.

class Text
  def initialize(text)
    @text = text
  end

  def swap(letter_one, letter_two)
    @text.gsub(letter_one, letter_two)
  end

  def word_count
    @text.split.count
  end
end

Write a test for this new method. Make sure to utilize the setup and teardown methods for any file related operations.

=end