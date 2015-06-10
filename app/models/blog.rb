class Blog < ActiveRecord::Base
	has_attached_file :image,
		:styles => {
			:thumb => "50x50#",
			:display => "348x>",
			:content => "648x>"
		}

	validates_attachment_content_type :image,
	content_type: /^image\/(png|gif|jpeg)/,
	message: "Only images allowed"

	validates :image, attachment_presence: true
	
	extend FriendlyId
	friendly_id :name, use: :slugged

	after_save :reload_routes

	def reload_routes
		DynamicRouter.reload
	end
end