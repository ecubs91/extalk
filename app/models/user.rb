class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
   
  validates :first_name, presence: true
  has_one :member, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
