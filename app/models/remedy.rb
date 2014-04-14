class Remedy < ActiveRecord::Base
  scope :by_name, -> (q) { where('remedies.name LIKE ?', "%#{ q }%") }

  validates_uniqueness_of :name
  validates_presence_of :name
end