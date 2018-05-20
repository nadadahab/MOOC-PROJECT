class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
          has_many :courses
          has_many :lectures
          mount_uploader :avatar, AvatarUploader
          acts_as_voter
          has_and_belongs_to_many :lectures
          acts_as_commontator

  roles = [ :instructor , :default ]
  def is?( requested_role )
    self.role == requested_role.to_s
  end

end

