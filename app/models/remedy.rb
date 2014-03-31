class Remedy < ActiveRecord::Base

  has_many :reminders
  belongs_to :user

  validates_uniqueness_of :name
  validates_presence_of :name
end