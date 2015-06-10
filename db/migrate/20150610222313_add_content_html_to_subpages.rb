class AddContentHtmlToSubpages < ActiveRecord::Migration
  def change
    add_column :subpages, :content_html, :text
  end
end
