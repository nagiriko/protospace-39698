class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/ }
  validates :encrypted_password, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  validates_confirmation_of :password
  validates :profile, presence: true
  validates :occupation, presence: true
  validates :position, presence: true
  has_many :prototypes
  has_many :comments
end
