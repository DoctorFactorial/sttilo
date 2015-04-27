class DynamicRouter
	def self.load
		Sttilophoto::Application.routes.draw do 
			Subpage.all.each do |sp|
				puts "Routing #{sp.name}"
				category = if sp.category.nil? then '' else '/' + sp.category.downcase end
				route = if sp.category.nil? then 'newpage_' + sp.id.to_s else sp.category.downcase + '_' + sp.id.to_s end
				get "#{category}/#{sp.slug}", :to => "subpages#show", as: route, defaults: {id: sp.id}
			end
		end
	end

	def self.reload
		Sttilophoto::Application.routes_reloader.reload!
	end
end