class User < ActiveRecord::Base
  mount_uploader :profile_photo, ImageUploaderUploader
  mount_uploaders :albums, ImageUploaderUploader
  validates :name, :age, :presence => true
end
