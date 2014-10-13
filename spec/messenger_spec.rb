require 'messenger'

describe Messenger do 

	let(:account_sid) { ENV['TWILIO_SID']}
	let(:auth_token) { ENV['TWILIO_TOKEN']}
	let(:messenger) { Messenger.new }
	let(:client) { double :twilio_rest_client}
	let(:messages) { double :messages}
	let(:salad) { double :dish, name: "salad", price: 6 }
	let(:burger) { double :dish, name: "burger", price: 8 }
	let(:order) {double :order, dishes: [salad,burger]}

	it "has a twillio rest client on initialization" do 
		expect(messenger.client).to be_an_instance_of(Twilio::REST::Client)
	end

	it "can send a message" do 
		allow(messenger).to receive(:client).and_return(client)
		allow(client).to receive(:messages).and_return(messages) 
		expect(messages).to receive(:create)
		messenger.send_message
	end
end

