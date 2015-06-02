class AmendBlogColumnNamesToMatchSubplage < ActiveRecord::Migration
  def change
  	remove_column :blogs, :description, :text
  	add_column :blogs, :content, :text 
  end
end
