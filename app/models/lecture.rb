class Lecture < ActiveRecord::Base
	belongs_to :course
	belongs_to :user
	mount_uploader :attachment, AttachmentUploader
	acts_as_commontable
	acts_as_votable
	has_and_belongs_to_many :users
end
