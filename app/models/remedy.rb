class Remedy < ActiveRecord::Base
  has_many :users
  belongs_to :user_remedies

  validates_uniquess_of :title
  validates_presence_of :title
  validates_associated :users, :user_remedies
end