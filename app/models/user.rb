class User < ApplicationRecord
    has_many :posts
  
    validates :name, presence: { message: "Name can't be blank" }
    validates :email, presence: { message: "Email can't be blank" }
    validates :password, presence: { message: "Password can't be blank" }, length: { minimum: 6, message: "Password must have at least 6 characters" }
  end