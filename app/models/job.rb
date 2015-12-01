class Job < ActiveRecord::Base
	geocoded_by :city_state
	after_validation :geocode
	validates_presence_of :title, :city, :state, :description, :requirements, :compensation
	belongs_to :user
	has_many :applications

	def city_state
		"#{city}, #{state}"
	end

	def self.not_onsite
		self.where(is_onsite: false)	
	end

	def self.onsite
		self.where(is_onsite: true)	
	end
end
