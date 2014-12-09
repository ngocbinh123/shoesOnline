class DetailsProduct < ActiveRecord::Base
	belongs_to :product
	belongs_to :type_product
end
