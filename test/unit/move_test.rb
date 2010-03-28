require 'test_helper'
require 'shoulda'

class MoveTest < ActiveSupport::TestCase

  should_belong_to :game
  should_have_many :pieces
  
  should_validate_presence_of :game_id, :x, :y, :angle, :power, :attempts, :score_differential, :max_multiplier
  
end
