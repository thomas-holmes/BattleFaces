require 'bcrypt'

class MasterFace < ActiveRecord::Base
  include BCrypt
  has_secure_password

  has_many :api_keys
  has_many :battle_faces

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true

  attr_accessor :password, :password_confirmation

  def password
    @password ||= Password.new(password_digest)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_digest = @password
  end

  def session_api_key
    api_keys.active.session.first_or_create
  end
end
