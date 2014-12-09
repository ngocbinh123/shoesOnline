json.array!(@commends) do |commend|
  json.extract! commend, :id, :content, :product_id, :user_id
  json.url commend_url(commend, format: :json)
end
