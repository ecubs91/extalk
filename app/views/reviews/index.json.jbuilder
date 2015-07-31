json.array!(@reviews) do |review|
  json.extract! review, :id, :user_id, :member_id, :rating, :comment
  json.url review_url(review, format: :json)
end
