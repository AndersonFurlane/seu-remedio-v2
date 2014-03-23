class Reminder < ActiveRecord::Base

  belongs_to :remedy
  belongs_to :user

  validates_presence_of :title, :remedy
  validates_presence_of :start_at, :end_at, :range_days, unless: Proc.new{ |reminder| reminder.forever_remedy}
  validates_presence_of :dependent_email, :dependent_name, if: Proc.new{ |reminder| reminder.dependent }
  validates_associated :remedy, :user
end