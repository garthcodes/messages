namespace :send_message do
  task :shelly => :environment do
    TwilioTextMessenger.new(Message.order("RANDOM()").first.description).call
  end
end
