class User < ApplicationRecord
  validates :firstname, presence: true, format: { with: /\A[-a-zA-Z]+\z/ }
  validates :lastname, presence: true, format: { with: /\A[-a-zA-Z]+\z/ }
  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/ }
end
