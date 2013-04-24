class AddChambers < ActiveRecord::Migration
  def up
  	chamber1 = Chamber.new
  	chamber2 = Chamber.new
  	chamber3 = Chamber.new
  	chamber4 = Chamber.new


  	chamber1.save!
  	chamber2.save!
  	chamber3.save!
  	chamber4.save!

  end

  def down
  	chambers = Chamber.find([1,4])
  	Chamber.delete chambers
  end
end
