class RegisteredUserForPublication < ActiveRecord::Base

  has_one 	:publication
  
  validates :publication_id, presence: true  
  validates :active_device_dev_uuid, presence: true, length: { maximum: 64 } 
  validates :publication_version 

  before_save :init_data
  def init_data
    self.date_of_registration ||= Date.today if new_record?
  end

end
