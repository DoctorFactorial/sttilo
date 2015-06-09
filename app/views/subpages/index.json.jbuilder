json.array!(@subpages) do |subpage|
  json.extract! subpage, :id, :name, :content
  json.url subpage_url(subpage, format: :json)
end
