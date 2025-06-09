class Product < ApplicationRecord
  include Notifications  # Adiciona esta linha

  has_one_attached :featured_image
  has_rich_text :description
  validates :name, presence: true
  validates :inventory_count, numericality: { greater_than_or_equal_to: 0 }
end
