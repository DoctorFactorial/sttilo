module ApplicationHelper
	def locale_url_es(locale)
		main = root_path.split('/e')[0]
		subpath = request.fullpath.sub(/(en)/, "#{locale}")
  		return main + subpath
	end
	def locale_url_en(locale)
		main = root_path.split('/e')[0]
		subpath = request.fullpath.sub(/(es)/, "#{locale}")
  		return subpath
	end
end
