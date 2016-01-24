class User < ActiveRecord::Base
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



  def favouriteds
    favourites.map(&:favourited)
  end
end
