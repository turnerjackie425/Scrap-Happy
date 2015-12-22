class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  has_many :page_attachments

  def welcome_message(user)
    @user = user
    mail(
      :from => 'turnerjackie425@icloud.com',
      :to => user.email,
      :subject => 'Welcome to Scrap Happy!'
      )
  end
end
