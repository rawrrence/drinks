class Order < ActiveRecord::Base
  attr_accessible :name, :ingredients_attributes

  has_many :ingredients
  accepts_nested_attributes_for :ingredients, :reject_if => lambda { |ingredient| ingredient[:amount].blank? }



  scope :alphabetical, order('name')

  #validates_presence_of :name
end
