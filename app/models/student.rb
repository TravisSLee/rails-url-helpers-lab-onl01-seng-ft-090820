class Student < ActiveRecord::Base
  
  after_initialize :active
  
  def to_s
    self.first_name + " " + self.last_name
  end
  
  def active
    self.active = false
  end
end