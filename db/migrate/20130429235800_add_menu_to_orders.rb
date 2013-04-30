class AddMenuToOrders < ActiveRecord::Migration
  def change
  	add_column :orders, :on_menu, :boolean, :default => true
  end
end
