class Product < ApplicationRecord
	belongs_to :category

	validates :price, presence: true
end
