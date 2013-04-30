class Chamber < ActiveRecord::Base
  attr_accessible :substance

  before_save :delete_orders
  before_save :remove_menu

  scope :alphabetical, order('substance')
  scope :by_id, order('id')
  scope :non_empty, where('substance != ?', "")

  def empty_chamber
  	self.substance = ""
  	self.save!
  end

  def remove_menu
    orders = Order.inactive
    orders.each do |o|
      o.ingredients.each do |i|
        if i.chamber_id == self.id
          o.on_menu = false
          o.save!
        end
      end
    end
  end

  def delete_orders
  	orders = Order.active
  	orders.each do |o|
  		o.ingredients.each do |i|
  			if i.chamber_id == self.id
  				o.delete
  			end
  		end
  	end
  end
end
