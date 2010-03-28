class Move < ActiveRecord::Base
  
  belongs_to :game
  has_many :pieces
  
  validates_presence_of :game_id, :x, :y, :angle, :power, :attempts, :score_differential, :max_multiplier
  
end
