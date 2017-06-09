class Wedding < ApplicationRecord

  validates :wedding_date, :presence => { :message => "Please add the wedding date!" }
  validates :couple_name, :presence => { :message => "Please add the bride & groom!" }

  has_many :tasks, :dependent => :destroy
  has_many :users, :dependent => :destroy
  has_many :forums, :dependent => :destroy

end
