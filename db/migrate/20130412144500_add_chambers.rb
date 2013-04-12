class AddChambers < ActiveRecord::Migration
  def up
  	chamber1 = Chamber.new
  	chamber2 = Chamber.new
  	chamber3 = Chamber.new
  	chamber3.substance = "Ice"
  	chamber4 = Chamber.new
  	chamber5 = Chamber.new

  	chamber1.save!
  	chamber2.save!
  	chamber3.save!
  	chamber4.save!
  	chamber5.save!
  end

  def down
  	chambers = Chamber.find([1,5])
  	Chamber.delete chambers
  end
end
