class Order < ActiveRecord::Base
  attr_accessible :name, :ingredients_attributes, :active

  before_destroy :destroyable?
  after_rollback :make_inactive

  has_many :ingredients
  accepts_nested_attributes_for :ingredients, :reject_if => lambda { |ingredient| ingredient[:amount].blank? }

  scope :active, where('active = ?', true)
  scope :inactive,where('active = ?', false)

  scope :chronological, order('updated_at')
  scope :alphabetical, order('name')
  scope :by_id, order('id')

  #validates_presence_of :name

  def destroyable?
  	return false
  end

  def make_inactive
  	self.active = false
  	self.save!
  end

end
