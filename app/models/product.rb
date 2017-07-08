class Product < ApplicationRecord
  has_many :reviews
  has_many :order_items
  has_many :orders, through: :order_items

  validates_presence_of :name, :price, :country
  validates_numericality_of :price, :greater_than => 0



  scope :most_reviews, -> {(
    select("products.id, products.name, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group('products.id')
    .order('reviews_count DESC')
    .limit(1)
  )}

  scope :three_most_recent_products, -> { order(created_at: :desc).limit(3)}

  scope :made_in_usa, -> { where(:country => "US")}
end
