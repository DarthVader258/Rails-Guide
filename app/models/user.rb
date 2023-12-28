class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, 
         :recoverable, :rememberable, :validatable, :trackable  

  # validates_presence_of :full_name, :contact_number
  # validates_uniqueness_of :contact_number
  # validates_length_of :contact_number, :minimum => 10, :maximum => 10

  has_many :plans
  has_many :likes
  has_many :user_plans
  has_many :plans, through: :user_plans
  # When creating has_many association model name must be plural
  validates :full_name, :contact_number, presence: true
  validates :contact_number, uniqueness: true, length: { is: 10, message: "is too short (minimum is 10 characters)"}, format: { with: /\A[6-9]\d{9}\z/, message: "should start with 6, 7, 8, or 9 and be 10 digits long" }
end
