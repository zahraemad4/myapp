class CreateJobs < ActiveRecord::Migration[7.0]
  def change
    create_table :jobs do |t|
      t.integer :user_id
      t.string :jobtitle
      t.integer :workhours
      t.string :company

      t.timestamps
    end
  end
end
