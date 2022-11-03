class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.integer :user_id
      t.string :carname
      t.string :carcolor
      t.integer :carnumber

      t.timestamps
    end
  end
end
