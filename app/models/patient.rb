class Patient < ActiveRecord::Base
  validates :name, presence: true
  has_many :appointments  
  
  def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end
end
