class Hyalin::Postman < ActionMailer::Base
  default :from     => Hyalin.mailer_from,
          :subject  => I18n.t('hyalin.mailer.hyalin_mail.subject'),
          :to       => Hyalin.mailer_to

  # TODO Create Hyalin.mailer_layout
  layout 'hyalin/postman'

  def hyalin_email message
    @message = message

    mail :from     => message.email,
         :reply_to => message.email,
         :subject  => message.subject
  end
end
