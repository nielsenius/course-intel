class User < ActiveRecord::Base
  
  has_secure_password
  
  validates_format_of :email, with: /\A[\w]([^@\s,;]+)@(([\w-]+\.)+cmu.edu)\z/i, message: "is not a CMU email"
  
  validates_presence_of :password, on: :create 
  validates_presence_of :password_confirmation, on: :create
  validates_confirmation_of :password, message: "does not match"
  validates_length_of :password, minimum: 6, message: "must be at least 6 characters long", allow_blank: true
  
  validates_presence_of :first_name
  validates_presence_of :last_name
  
  validates_numericality_of :grad_year
  
  def self.authenticate(email, password)
    find_by_username(email).try(:authenticate, password)
  end
  
end
