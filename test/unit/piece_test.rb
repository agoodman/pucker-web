require 'test_helper'
require 'shoulda'

class PieceTest < ActiveSupport::TestCase

  should_belong_to :move
  
  should_validate_presence_of :x, :y, :radius, :count
  
end
