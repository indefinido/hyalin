class Hyalin::Postman < ActionMailer::Base
  default from:    Hyalin.mailer_from,
          subject: -> { generate_default_subject },
          to:      Hyalin.mailer_to

  # TODO Create Hyalin.mailer_layout
  # layout 'hyalin/postman'

  def contact_email message
    @message = message

    mail from:     message.email,
         reply_to: message.email
  end

  private

  def generate_default_subject
    t 'hyalin.postman.contact_email.subject', name: @message.name || @message.email
  end
end
