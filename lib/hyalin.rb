module Hyalin
  require "hyalin/engine"

  # Address contact email notifications are sent from.
  mattr_accessor :mailer_from

  # Address to send contact email notifications to.
  mattr_accessor :mailer_to

  # Redirect url after succefully sending message
  mattr_accessor :after_sent_redirect_to

  # Store messages on database?
  mattr_accessor :persist_messages

  # Default way to setup
  def self.setup
    yield self
  end
end
