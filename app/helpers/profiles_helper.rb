module ProfilesHelper
  def self.upload_to_s3(data)
    client = Aws::S3::Client.new(
    region: Rails.application.credentials.aws[:region]
    ) 
    client.put_object(bucket:Rails.application.credentials.aws[:bucket], key:'master.json', body:data)
  end
end
