class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.integer :user_id
      t.date :due_date
      t.date :date_completed
      t.string :task_title
      t.string :task_short_desc
      t.string :task_note
      t.integer :wedding_id
      t.integer :leader_id

      t.timestamps

    end
  end
end
