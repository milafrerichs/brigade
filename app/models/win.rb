class Win < ActiveRecord::Base
  belongs_to :brigade
  has_one :deployed_application
  has_one :location
  #validation: if checked then vsalue mus be set
end
