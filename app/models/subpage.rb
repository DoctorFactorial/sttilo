class Subpage < ActiveRecord::Base
	extend FriendlyId
	friendly_id :name, use: :slugged

	after_save :reload_routes

	def reload_routes
		DynamicRouter.reload
	end
end
