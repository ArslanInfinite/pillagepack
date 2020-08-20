class AddUserPacksTable < ActiveRecord::Migration
  def change
    remove_column :packs, :user_id, :integer

    create_table :user_packs do |t|
      t.integer :pack_id
      t.integer :user_id
    end 

    add_column :pack_items, :user_id, :integer
  end
end
