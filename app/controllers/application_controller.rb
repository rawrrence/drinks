class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :get_order_options, :get_chamber_options

  def get_order_options
  	options = []
  	Order.alphabetical.each do |o|
  		options << ["#{o.name}", o.id]
  	end
  	return options
  end

  def get_chamber_options
  	options = []
  	Chamber.alphabetical.each do |c|
  		options << ["#{c.substance}", c.id]
  	end
  	return options
  end
end
