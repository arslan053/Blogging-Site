 class User < ApplicationRecord
    validates :username, presence: true, 
                     uniqueness: { case_sensitive: false }, 
                     length: { minimum: 5, maximum: 27 }
   VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
   validates :email, presence: true,  
                  length: { maximum: 130}, 
                  format: { with: VALID_EMAIL_REGEX }
 end   