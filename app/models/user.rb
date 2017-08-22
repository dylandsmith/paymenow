class User < ApplicationRecord
  has_and_belongs_to_many :properties

  attr_accessor :login

  # has_and_belongs_to_many :unit
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable
         
         #attr_accessor :email, :username, :password, :password_confirmation, :remeber_me
         
         #validates_presence_of :username

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions.to_h).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    elsif conditions.has_key?(:username) || conditions.has_key?(:email)
      where(conditions.to_h).first
    end
  end
end
