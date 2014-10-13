require 'twilio-ruby'

class Messenger
	
	attr_reader :client

	def initialize
		@client = Twilio::REST::Client.new ENV["TWILIO_SID"], ENV["TWILIO_TOKEN"]
	end

	def send_message
		t = Time.now + (60*60)
	    @delivery_time = t.strftime("%H:%M")
	    text = "Message sent: 'Thanks for your order! Your meal will be delivered by #{@delivery_time}."
		
		client.messages.create(
  			from: "441984250008",
  			to: ENV["Phone"],
  			body: text
		)
	end
end