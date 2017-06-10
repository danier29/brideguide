class AddAssigneeToAssignments < ActiveRecord::Migration[5.0]
  def change
    add_column :assignments, :assignee, :string
  end
end
