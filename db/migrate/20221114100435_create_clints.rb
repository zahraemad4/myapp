class CreateClints < ActiveRecord::Migration[7.0]
  def change
    create_table :clints do |t|
      t.integer :clint_id, null:false , index:true
      t.string :full_name, null:false , index:true
      t.string :phones
      t.string :birth_date
      t.string :gender
      t.string :clint_email, null:false , index:true

      t.timestamps
    end
  end
end
