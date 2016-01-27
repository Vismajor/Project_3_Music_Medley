class User < ActiveRecord::Base
  mount_uploader :avatar, ProfilepictureUploader

# Added by Koudoku.
  has_one :subscription
  has_many :favourites

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates_presence_of :name
  validates_uniqueness_of :name
  has_many :songs
  has_many :comments, as: :commentable
  has_many :friendships
  has_many :friends, :through => :friendships
  has_many :inverse_friendships, :class_name => "Friendship", :foreign_key => "friend_id"
  has_many :inverse_friends, :through => :inverse_friendships, :source => :user





  def favouriteds
    favourites.map(&:favourited)
  end
end
