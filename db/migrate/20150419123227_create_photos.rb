class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.string :category
      t.boolean :visible, default: true

      t.timestamps null: false
    end
  end
end
