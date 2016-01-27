class Gig < ActiveRecord::Base
  belongs_to :user
  has_many :comments, as: :commentable
  geocoded_by :address

  after_validation :geocode
end
