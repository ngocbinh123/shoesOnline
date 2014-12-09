class TypeProduct < ActiveRecord::Base
	has_many :details_product
	has_many :product
	belongs_to :list_product
end
