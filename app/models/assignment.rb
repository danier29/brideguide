class Assignment < ApplicationRecord

  belongs_to :user, :required => false
  belongs_to :task

end
