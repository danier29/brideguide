class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :wedding_id, :presence => true
  validates :role, :presence => { :message => "Please choose your relation to the bride!" }
  validates :name, :presence => { :message => "Please add your name!" }
  validates :name, :uniqueness => true


  has_many :assignments, :dependent => :nullify
  has_many :tasks, :dependent => :nullify
  has_many :comments
  belongs_to :wedding


end
