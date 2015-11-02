class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  has_many :page_attachments
  #has_attached_file :image, :styles => { :medium => "300x300>" }
 # validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
