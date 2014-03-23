class Remedy < ActiveRecord::Base

  has_many :reminders

  validates_uniqueness_of :name
  validates_presence_of :name
end