class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :category
      t.string :description
      t.string :item_image_url
      t.integer :pack_id
    end
  end
end