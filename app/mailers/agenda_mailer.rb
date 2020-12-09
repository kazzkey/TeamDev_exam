class AgendaMailer < ApplicationMailer
  def delete_agenda_mail(agenda, user)
    @agenda = agenda
    @user = user
    mail to: @user.email, subject: I18n.t('views.messages.delete_agenda')
  end
end
