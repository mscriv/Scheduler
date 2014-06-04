class Appointment < ActiveRecord::Base
  belongs_to :patient
  
  
  validates :date,    presence: true
  validates :time,    presence: true,
                      uniqueness: { scope: :date }
end
