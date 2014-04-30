class Place < ActiveRecord::Base

	 	validates :booktitle, presence: true, length: { minimum: 5 }, uniqueness: { message: "has already been submitted" }
	 	validates :description, presence: true
	 	validates :address, presence: true 
 		# validates :latitude, presence: true
 		# validates :longitude, presence: true 
 		# removed because geocoder is going to do it for us
 		# we're going to add in the geocoder gem
 		geocoded_by :address
 		after_validation :geocode

		validates :approximate, inclusion: { in: [true, false] }

end
