class Album < ActiveRecord::Base
  mount_uploader :single_photo, ImageUploaderUploader
  belongs_to :user

end
