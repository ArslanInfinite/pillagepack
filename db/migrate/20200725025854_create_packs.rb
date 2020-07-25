class CreatePacks < ActiveRecord::Migration
  def change
    create_table :packs do |t|
      t.string :name
      t.string :pack_image_url
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
