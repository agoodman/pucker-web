class Piece < ActiveRecord::Base
  
  belongs_to :move
  
  validates_presence_of :x, :y, :radius, :count
  
end
