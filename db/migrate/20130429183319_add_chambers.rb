class AddChambers < ActiveRecord::Migration
  def up
  	chamber1 = Chamber.new
  	chamber2 = Chamber.new
  	chamber3 = Chamber.new
  	chamber4 = Chamber.new
    chamber5 = Chamber.new
    chamber6 = Chamber.new
    chamber7 = Chamber.new

    chamber1.kind = "Liquid"
    chamber2.kind = "Liquid"
    chamber3.kind = "Liquid"
    chamber4.kind = "Liquid"
    chamber5.kind = "Solid"
    chamber6.kind = "Solid"
    chamber7.kind = "Solid"

    chamber1.substance = ""
    chamber2.substance = ""
    chamber3.substance = ""
    chamber4.substance = ""
    chamber5.substance = ""
    chamber6.substance = ""
    chamber7.substance = ""

  	chamber1.save!
  	chamber2.save!
  	chamber3.save!
  	chamber4.save!
    chamber5.save!
    chamber6.save!
    chamber7.save!

  end

  def down
  	chambers = Chamber.find([1,7])
  	Chamber.delete chambers
  end
end
