class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :city
      t.string :state
      t.text :resume
      t.text :cover_letter
      t.integer :job_id
      t.boolean :opt_in

      t.timestamps null: false
    end
  end
end
