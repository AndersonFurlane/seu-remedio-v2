class Dependent < ActiveRecord::Base
  belongs_to :users
  has_many :remedies

  validates_associated :users, :remedies
  validates_presence_of :name, :phone
end