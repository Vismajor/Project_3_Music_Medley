class Favourite < ActiveRecord::Base
  belongs_to :user
  belongs_to :favourited, polymorphic: true

  scope :songs, -> {where(favourited_type: 'Song')}
  scope :collections, -> {where(favourited_type: 'Collection')}
  scope :genres, -> {where(favourited_type: 'Genre')}

end
