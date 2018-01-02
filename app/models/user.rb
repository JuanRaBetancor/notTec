class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :articles
  has_many :comments
  
  include PermissionsConcern
  
  def avatar
  	email_adress = self.email.downcase
  	firma = Digest::MD5.hexdigest(email_adress)
  	image_src = "http://www.gravatar.com/avatar/#{firma}"
  end

end
