class Game < ActiveRecord::Base
  
  has_many :moves
  
  validates_presence_of :uuid
  
end
