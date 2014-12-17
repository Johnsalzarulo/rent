class Message < ActiveRecord::Base
	before_create :send_sms

	private 

	def send_sms 

	account_sid = ENV['TWILLIO_ACCOUNT_SID']
	auth_token = ENV['TWILLIO_AUTH_TOKEN']
	 
	@client = Twilio::REST::Client.new account_sid, auth_token 
	 
	@client.account.messages.create({
		:from => '+18188692170', 
		:to => to, 
		:body => body,  
	})

	end 

end