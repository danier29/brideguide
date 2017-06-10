class Task < ApplicationRecord

  validates :wedding_id, :presence => true
  validates :task_title, :presence => { :message => "This task needs a title!" }
  validates :task_title, :uniqueness => { :message => "This task title already exists! " }
  validates :task_short_desc, :presence => { :message => "This task must have a short description!" }
  validates :due_date, :presence => { :message => "This task needs a due date!" }

  belongs_to :wedding


end
