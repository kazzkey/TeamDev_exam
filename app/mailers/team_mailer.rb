class TeamMailer < ApplicationMailer
  default from: 'from@example.com'

  def make_leader_mail(team, user)
    @team = team
    @email = user.email
    mail to: @email, subject: I18n.t('views.messages.make_leader')
  end
end
