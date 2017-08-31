class Product < ApplicationRecord
	belongs_to :category

	validates :price, presence: true

	scope :all_premium, -> {where(premium: true)}
	scope :last_n, ->(cant) {limit(cant)} 
end
