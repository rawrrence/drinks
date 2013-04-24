class Chamber < ActiveRecord::Base
  attr_accessible :substance

  scope :alphabetical, order('substance')
  scope :by_id, order('id')
  scope :non_empty, where('substance != ?', "")

  def empty_chamber
  	self.substance = ""
  	self.save!
  end

end
