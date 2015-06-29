class User < ActiveRecord::Base
  mount_uploader :profile_photo, ImageUploaderUploader
  validates :name, :age, :presence => true

  has_many :albums

end
