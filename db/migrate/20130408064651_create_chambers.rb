class CreateChambers < ActiveRecord::Migration
  def change
    create_table :chambers do |t|
      t.string :substance

      t.timestamps
    end
  end
end
