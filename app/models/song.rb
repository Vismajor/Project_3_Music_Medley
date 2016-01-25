class Song < ActiveRecord::Base
  belongs_to :user
  belongs_to :genre
  has_many :favourites, as: :favourited
  has_and_belongs_to_many :collections
  mount_uploader :song, AvatarUploader
  has_many :comments, as: :commentable
end
