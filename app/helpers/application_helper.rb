module ApplicationHelper
	def locale_url_es(locale)
		subpath = request.fullpath.sub(/(en)/, "#{locale}")
  		return subpath
	end
	def locale_url_en(locale)
		subpath = request.fullpath.sub(/(es)/, "#{locale}")
  		return subpath
	end
end
