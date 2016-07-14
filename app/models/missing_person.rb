class MissingPerson < ActiveRecord::Base
  geocoded_by :location
  after_validation :geocode
  has_many :impressions

  # def get_location(the_ip)
  #     get the viewers IP addresss
  #     loc = Location.find_by_ip(the_ip)
  #     locUser= LocationUser.new({:location_id => loc.id})
  #
  # end
  #     controller
  #    impression.get_location(request.remote_ip)


# def self.search(search)
#   if search
#     where(['name like ?', '%#{search}%'])
#   else
#     all
#   end

end
