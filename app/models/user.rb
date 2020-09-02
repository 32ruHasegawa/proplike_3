class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :props, dependent: :destroy
  has_many :likes, dependent: :destroy
  validates :username, presence: true 
  attachment :profile_image

  def already_like?(prop)
    self.likes.exists?(prop_id: prop.id)
  end  
end
