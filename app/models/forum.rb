class Forum < ApplicationRecord

  validates :wedding_id, :presence => true
  validates :title, :presence => { :message => "Please add a forum title!" }
  validates :title, :uniqueness => { :scope => [:wedding_id] }

  belongs_to :wedding
  has_many :comments, :dependent => :destroy


end
