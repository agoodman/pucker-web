require 'test_helper'
require 'shoulda'

class GameTest < ActiveSupport::TestCase

  should_have_many :moves

  should_validate_presence_of :uuid
  
end
