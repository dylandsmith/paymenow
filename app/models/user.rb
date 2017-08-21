class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
         
         #attr_accessor :email, :username, :password, :password_confirmation, :remeber_me
         
         #validates_presence_of :username
end
