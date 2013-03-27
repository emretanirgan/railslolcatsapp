class Notifications < ActionMailer::Base
  default from: "welcome@railslolcatsapp.herokuapp.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.new_user.subject
  #
  def new_user(user)
    @greeting = "Hi" + user.name
    @user = user
    mail to: user.email
  end
end
