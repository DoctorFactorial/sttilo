class Photo < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image,
		:styles => {
			:thumb => "50x50#",
			:content => "648x486>"
		}

	validates_attachment_content_type :image,
	content_type: /^image\/(png|gif|jpeg)/,
	message: "Only images allowed"

	validates :image, attachment_presence: true

	def self.search(query)
	  where('name like :query OR category like :query', query: "%#{query}%")
	end
end