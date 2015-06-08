class AddContentHtmlToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :content_html, :text
  end
end
