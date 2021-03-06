class Pack < ActiveRecord::Base
  belongs_to :user
  has_many :pack_items
  has_many :items, through: :pack_items
end