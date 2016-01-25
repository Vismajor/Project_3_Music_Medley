class Collection < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :songs
  has_many :comments, as: :commentable

end
