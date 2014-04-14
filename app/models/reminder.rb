class Reminder < ActiveRecord::Base

  belongs_to :remedy
  belongs_to :user

  validates_presence_of :title, :remedy, :time
  validates_presence_of :start_at, :end_at, :range_days, unless: Proc.new{ |reminder| reminder.forever_remedy}
  validates_presence_of :dependent_email, :dependent_name, if: Proc.new{ |reminder| reminder.dependent }
  validates_associated :remedy, :user

  attr_accessor :remedy_name

  # get and set
  def remedy_name=(value)
    write_attribute(:remedy_id, Remedy.find_or_create_by(name: value).id)
  end

  def remedy_name
    self.remedy.name unless self.remedy.blank?
  end
end