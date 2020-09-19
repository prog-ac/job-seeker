class Profile < ApplicationRecord
  mount_uploader :thumbnail, ThumbnailUploader
  belongs_to :user
  has_many :articles
  has_many :careers
  accepts_nested_attributes_for :articles, allow_destroy: true
  accepts_nested_attributes_for :careers, allow_destroy: true
end
