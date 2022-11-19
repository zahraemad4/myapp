class CreatePhones < ActiveRecord::Migration[7.0]
  def change
    create_table :phones do |t|
      t.references :phones, foreign_key: :clint_id
      t.string :model ,index:true
      t.string :serial , null:false , index:true
      t.string :color
      t.string :phonenumber , null:false , index:true

      t.timestamps
    end
  end
end
