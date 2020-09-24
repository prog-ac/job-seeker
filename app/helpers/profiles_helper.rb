module ProfilesHelper
  def self.upload_to_s3(key, data)
    client = Aws::S3::Client.new(
    region: Rails.application.credentials.aws[:region]
    ) 
    client.put_object(bucket:Rails.application.credentials.aws[:bucket], key:key, body:data)
  end
  def self.ARTICLE_CATEGORY
    return {'ポートフォリオ':'p','受賞歴':'j', '資格':'s'}
  end
  def self.article_category_value_to_key(val)
    category = ProfilesHelper.ARTICLE_CATEGORY.find {|k,v| v == val}
    category[0]
  end
end