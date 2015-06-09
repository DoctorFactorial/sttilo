class AddCategoryToSubpages < ActiveRecord::Migration
  def change
    add_column :subpages, :category, :string
  end
end
