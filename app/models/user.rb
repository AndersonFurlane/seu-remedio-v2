class User < ActiveRecord::Base
  has_many :remedies
  has_many :dependents
  has_many :user_remedies

  validates_uniqueness_of :name, :email
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates_presence_of :name, :email, :phone
  validates_associated :remedies, :dependents, :user_remedies

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
