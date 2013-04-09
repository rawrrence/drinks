class Ingredient < ActiveRecord::Base
  attr_accessible :amount, :chamber_id, :order_id

  belongs_to :order
  belongs_to :chamber

  scope :by_chamber_id, order('chamber_id')

  #validates_numericality_of :chamber_id, :only_integer => true, :greater_than => 0
  #validates_numericality_of :order_id, :only_integer => true, :greater_than => 0

end
