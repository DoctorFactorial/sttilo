class DynamicRouter
	def self.load
		Sttilophoto::Application.routes.draw do 
			Subpage.all.each do |sp|
				puts "Routing #{sp.name}"
				category = if sp.category.nil? then '' else '/' + sp.category.downcase end
				get "#{category}/#{sp.name}", :to => "subpages#show", defaults: {id: sp.id}
			end
		end
	end

	def self.reload
		Sttilophoto::Application.routes_reloader.reload!
	end
end