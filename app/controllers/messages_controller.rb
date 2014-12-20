class MessagesController < ApplicationController

	def index
		@messages = Message.all
		@client = Twilio::REST::Client.new ENV['TWILLIO_ACCOUNT_SID'], ENV['TWILLIO_AUTH_TOKEN']
		@message = Message.new


	end

	def show 
		@messae = Message.find(params[:id])
	end


	def new 
		@message = Message.new
	end

	def create 
		@message = Message.new(message_params)
		if @message.save 

			flash[:notice] = "Your message was sent"
			redirect_to messages_path

			@sms_to = @message.tenant.phone
			@sms_body = @message.body

			send_sms

		else
			render 'new'
		end 
	end

	private 

	def message_params 

		params.require(:message).permit(:to, :from, :body, :phone, :tenant_id) 
	end

	def send_sms
		account_sid = ENV['TWILLIO_ACCOUNT_SID']
				auth_token = ENV['TWILLIO_AUTH_TOKEN']
	 
				@client = Twilio::REST::Client.new account_sid, auth_token 
	 
				@client.account.messages.create({
					:from => '+18188692170', 
					:to => @sms_to, 
					:body => @sms_body,  
				})
	end




end
