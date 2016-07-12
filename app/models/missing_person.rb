class MissingPerson < ActiveRecord::Base
  geocoded_by :location
  after_validation :geocode

def self.search(search)
  if search
    where(['name like ?', '%#{search}%'])
  else
    all
  end
end
end
