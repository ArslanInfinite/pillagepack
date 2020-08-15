class User < ActiveRecord::Base 
  has_secure_password
  has_many :packs
  has_many :items, through: :packs
end 