module Hyalin
  class Message
    include Mongoid::Document

    field :body, type: String
    field :email, type: String
    field :name, type: String
    field :phone, type: String
    field :subject, type: String

    validates :body, :presence => true

    # TODO rewrite method definition when persisting
    # messages

    if Hyalin.persist_messages
      validate :persisted?, :message => 'Can\'t update contact messages!'
    end

    def save
      if self.valid?
        Hyalin::Postman.contact_email(self).deliver
        super if Hyalin.persist_messages
        return true

      end
      return false
    end
  end
end
