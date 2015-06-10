class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :name
      t.text :content
      t.string :category
      t.string :slug

      t.timestamps null: false
    end
    add_index :blogs, :slug, unique: true
  end
end
