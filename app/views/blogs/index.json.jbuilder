json.array!(@blogs) do |blog|
  json.extract! blog, :id, :name, :content, :category, :slug
  json.url blog_url(blog, format: :json)
end
