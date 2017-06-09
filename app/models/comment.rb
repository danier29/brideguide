class Comment < ApplicationRecord

  validates :user_id, :presence => true
  validates :forum_id, :presence => true
  validates :content, :presence => { :message => "Please add your thoughts !" }

  belongs_to :user
  belongs_to :forum

end
