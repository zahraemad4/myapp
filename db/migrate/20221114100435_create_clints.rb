class CreateClints < ActiveRecord::Migration[7.0]
  def change
    create_table :clints do |t|
      t.string :clint_id
      t.string :full_name, null:false , index:true
      t.string :birth_date
      t.string :gender
      t.string :clint_email, null:false , index:true

      t.timestamps
    end
  end
end
