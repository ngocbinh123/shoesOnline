json.array!(@details_products) do |details_product|
  json.extract! details_product, :id, :product_id, :type_product_id
  json.url details_product_url(details_product, format: :json)
end
