require File.expand_path(File.dirname(__FILE__) + '/test_helper.rb')

class TestFakerCompany < Test::Unit::TestCase
  def setup
    @tester = Faker::Company
  end

  def test_duns_number
    assert @tester.duns_number.match(/\d\d-\d\d\d-\d\d\d\d/)
  end

  require "open-uri"
  def test_logo
    open("#{ @tester.logo }") do |f|
	  assert f.readline.include?("GIF")
	end
  end
end