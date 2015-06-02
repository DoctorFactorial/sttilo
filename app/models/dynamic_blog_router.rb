class DynamicBlogRouter
	def self.load
		Sttilophoto::Application.routes.draw do 
			Blog.all.each do |b|
				puts "Routing #{b.name}"
				route = 'blog_' + b.id.to_s
				get "blog/#{b.slug}", :to => "blogs#show", as: route, defaults: {id: b.id}
			end
		end
	end

	def self.reload
		Sttilophoto::Application.routes_reloader.reload!
	end
end