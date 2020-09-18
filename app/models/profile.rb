class Profile < ApplicationRecord
  mount_uploader :thumbnail, ThumbnailUploader
end
