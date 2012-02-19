class UserMailer < ActionMailer::Base
  def new_follower_confirmation(user, from_user)
  	@user = user
  	@from_user = from_user
  	attachments["rails.png"] = File.read("#{Rails.root}/public/images/rails.png")
  	mail(:to => "#{user.name} <#{user.email}>",
  		   :subject => "#{from_user.name} has followed you!",
  		   :from => "brad.friedman@gmail.com")
  end
end
