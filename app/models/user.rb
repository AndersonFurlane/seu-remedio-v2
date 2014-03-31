class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :reminders, dependent: :destroy
  has_many :remidies

  validates_presence_of :name, :email
  validates_uniqueness_of :email
end