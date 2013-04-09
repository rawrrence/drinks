class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.integer :amount
      t.integer :chamber_id
      t.integer :order_id

      t.timestamps
    end
  end
end
