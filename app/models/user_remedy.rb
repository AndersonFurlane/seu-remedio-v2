class UserRemedy < ActiveRecord::Base
  belongs_to :users
  belongs_to :remedies

  validates_presence_of :start_at, :end_at
  validate :days_length
  validates_associated :user, :remedy

  private
  def days_length
    if(start_at > end_at)
      errors[:base] << 'A data inicial não pode ser maior que a data final'
    end    
  end
end