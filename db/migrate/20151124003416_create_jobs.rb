class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string    :title
      t.string    :city
      t.string    :state
      t.text      :description
      t.text      :requirements
      t.boolean   :is_external, default: true, null:false
      t.boolean   :is_active, default: true, null:false
      t.boolean   :is_onsite, default: true, null:false
      t.string    :compensation
      t.integer   :user_id

      t.timestamps null: false
    end
  end
end
