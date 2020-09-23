json.array! @profiles do |profile|
  json.name profile.name
  json.birthday profile.birthday
  json.address profile.address
  json.is_enable profile.is_enable
  json.thumbnail profile.thumbnail
  json.header_image profile.header_image
  json.introduction profile.introduction
  json.user_id profile.user_id
  json.articles do
    json.array! profile.articles do |article|
      json.profile_id article.profile_id
      json.user_id article.user_id
      json.title article.title
      json.category article.category
      json.image article.image
      json.text article.text
      json.url article.url
      json.date article.date
      json.id article.id
    end
  end
  json.careers do
    json.array! profile.careers do |career|
      json.date career.date
      json.text career.text
      json.user_id career.user_id
      json.profile_id career.profile_id
    end
  end
endjson.array! @profiles do |profile|
  json.name profile.name
  json.birthday profile.birthday
  json.address profile.address
  json.is_enable profile.is_enable
  json.thumbnail profile.thumbnail
  json.header_image profile.header_image
  json.introduction profile.introduction
  json.user_id profile.user_id
  json.articles do
    json.array! profile.articles do |article|
      json.profile_id article.profile_id
      json.user_id article.user_id
      json.title article.title
      json.category article.category
      json.image article.image
      json.text article.text
      json.url article.url
      json.date article.date
      json.id article.id
    end
  end
  json.careers do
    json.array! profile.careers do |career|
      json.date career.date
      json.text career.text
      json.user_id career.user_id
      json.profile_id career.profile_id
    end
  end
end