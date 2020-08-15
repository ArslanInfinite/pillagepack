class Item < ActiveRecord::Base
  # belongs_to :user
  # belongs_to :pack
  has_many :pack_items
  has_many :packs, through: :pack_items
end