class User < ActiveRecord::Base 
  has_secure_password
  has_many :user_packs
  has_many :items
  has_many :pack_items

  has_many :packs, through: :user_packs
end 