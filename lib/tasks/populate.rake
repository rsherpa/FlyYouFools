namespace :db do
	task :populate => :environment do
	require 'populator'
	require 'ffaker'

	[Flight].each(&:delete_all)

	Flight.populate 100..150 do |flight|
       		flight.flight_no = Populator.words(1).titleize
       		flight.departure_time = Time.now + rand(3) 
		flight.duration = 1..24
		flight.origin = Airport.order("RANDOM()").first
		flight.destination = Airport.order("RANDOM()").first
		flight.price = 1000..10000
        	end 
	end
end
 
