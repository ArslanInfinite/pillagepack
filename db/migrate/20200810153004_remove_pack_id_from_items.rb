class RemovePackIdFromItems < ActiveRecord::Migration
  def change
    remove_column :items, :pack_id, :integer
  end
end
