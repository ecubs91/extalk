json.array!(@members) do |member|
  json.extract! member, :id, :language_id, :wish_lang, :country, :city, :interest, :weixin, :skype
  json.url member_url(member, format: :json)
end
