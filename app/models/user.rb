class User < ApplicationRecord
  has_many :contact
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
