require "socket"

if ARGV.size != 1
	puts "Usage: You need to provide an IPv4 address"
	puts "#{PROGRAM_NAME} 10.0.0.1"
	exit 0
end

input=ARGV[0]

begin
	ip_address = Socket::IPAddress.new(input, 8080)
rescue
	puts "FAIL - \"#{input}\" is not a valid IP address"
	exit 1
end

family = ip_address.family
puts "OK - \"#{input}\" is a valid IP address - Family: \"#{family}\""
