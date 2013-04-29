class AddTypeToChambers < ActiveRecord::Migration
  def change
  	add_column :chambers, :kind, :string
  end
end
