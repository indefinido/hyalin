require_dependency "hyalin_controller"

module Hyalin
  class MessagesController < HyalinController
    respond_to :html, :json

    # GET /message/new
    # GET /message/new.json
    def new
      @message = Message.new
      respond_with @message
    end

    # POST /messages
    # POST /messages.json
    def create
      @message = Message.new params[:message]
      @message.save
      respond_with @message, location: after_send_path, notice: t('hyalin.messages.sent_success')
    end

    private

    def after_send_path
      Hyalin.after_sent_redirect_to
    end
  end
end
