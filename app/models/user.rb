class User < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :name, presence: true, length: { minimum: 2 }, uniqueness: true
  validates :email, presence: true,
                    format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*(\.[a-z]+)?\z/i, message: 'use a valid email' }
end
