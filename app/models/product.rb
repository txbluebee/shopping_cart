class Product < ApplicationRecord
  has_many :reviews
  validates_presence_of :name, :cost, :country
  
end
