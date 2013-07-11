class Win < ActiveRecord::Base
  belongs_to :brigade
  has_one :deployed_application
  has_one :location
  
end
