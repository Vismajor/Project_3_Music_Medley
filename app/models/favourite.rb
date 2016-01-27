class Favourite < ActiveRecord::Base
  belongs_to :user
  belongs_to :favourited, polymorphic: true

  scope :songs, -> {where(favourited_type: 'Song')}
  scope :collections, -> {where(favourited_type: 'Collection')}
  scope :genres, -> {where(favourited_type: 'Genre')}

  validates :user_id, uniqueness: { 
      scope: [:favourited_id, :favourited_type],
      message: 'can only favorite an item once'
    }

end
