class Song < ActiveRecord::Base
  belongs_to :user
  belongs_to :genre
  mount_uploader :song, AvatarUploader
end
