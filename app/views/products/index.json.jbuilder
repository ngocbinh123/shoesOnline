json.array!(@products) do |product|
  json.extract! product, :id, :name, :type_product_id, :price, :number, :view, :description
  json.url product_url(product, format: :json)
end
