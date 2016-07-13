class Impression < ActiveRecord::Base
  belongs_to :missing_person

  geocoded_by :ip_address
  after_validation :geocode
end
