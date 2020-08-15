class CreatePackItems < ActiveRecord::Migration
  def change
    create_table :pack_items do |t|
      t.integer :pack_id
      t.integer :item_id
    end 
  end
end
