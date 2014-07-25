require_dependency "hyalin_controller"

module Hyalin
  class MessagesController < HyalinController

    # GET /message/new
    # GET /message/new.json
    def new
      @message = Message.new

      respond_to do |format|
        format.html
        format.json { render :json => @message }
      end
    end

    # POST /messages
    # POST /messages.json
    def create
      @message = Message.new(params[:hyalin_message])

      respond_to do |format|
        if @message.save
          format.html { redirect_to after_send_path, :notice => t('hyalin.messages.sent_success') }
          format.json { render :json => @message, :status => :created, :location => @message      }
        else
          format.html { render_new_action }
          format.json { render :json => {errors: @message.errors}, :status => :unprocessable_entity }
        end
      end
    end

    private

    def after_send_path
      Hyalin.after_sent_redirect_to
    end
  end
end
