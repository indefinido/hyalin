# Use this hook to configure hyalin mailer.
Hyalin.setup do |config|

  # ==> Mailer Configuration

  # Configure the e-mail address which email notifications should be sent from.  If emails must be sent from a verified email address you may set it here.
  # Example:
  # config.mailer_from = "hyalin@please-change-me.com"
  config.mailer_from = nil

  # Configure the e-mail address which should receive the hyalin form email notifications.
  config.mailer_to = "heitorsalazar@gmail.com"

  # ==> Controller Configuration

  # Where to redirect after successufully sending message
  # flash[:notice] will hold the message status
  config.after_sent_redirect_to = :root_path

  # ==> Model Configuration

  # Store messages on database?
  config.persist_messages = true

end
