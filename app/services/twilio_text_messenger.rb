class TwilioTextMessenger
  attr_reader :message

  def initialize(message)
    @message = message
  end

  def call
    client = Twilio::REST::Client.new
    client.messages.create({
      from: '+14804478831',
      to: '+14808125552',
      body: message
    })
  end
end