class PackItem < ActiveRecord::Base
  belongs_to :pack 
  belongs_to :item
end
