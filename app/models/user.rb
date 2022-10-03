class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :validatable

  belongs_to :company 
  has_many :quotes 

  def name 
    email.split('@').first.capitalize
  end
end
