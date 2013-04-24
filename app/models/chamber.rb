class Chamber < ActiveRecord::Base
  attr_accessible :substance

  before_save :delete_orders

  scope :alphabetical, order('substance')
  scope :by_id, order('id')
  scope :non_empty, where('substance != ?', "")

  def empty_chamber
  	self.substance = ""
  	self.save!
  end

  def delete_orders
  	p self.id
  	orders = Order.active
  	orders.each do |o|
  		o.ingredients.each do |i|
  			p i.chamber_id
  			if i.chamber_id == self.id
  				o.delete
  			end
  		end
  	end
  end
end
