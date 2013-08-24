# Created by: Trevor D
# Year: 2013
# Description: 
require 'rubygems'

$stdout.flush
puts "Type in the keys separated with a comma(,) : "
key_array = gets # Get the Keys
key_array = key_array.split(","); # This will split the numbers from the comma seperator
key_array[key_array.size - 1] = key_array[key_array.size - 1].gsub(/\n/,"") # Replace the \n (Carriage Return) with nothing

puts "Enter the numbers separated with a comma(,) : "
number_hits = gets # Gets the Hits
number_hits = number_hits.split(",");  # This will split the numbers from the comma seperator
number_hits[number_hits.size - 1] = number_hits[number_hits.size - 1].gsub(/\n/,"") # Replace the \n (Carriage Return) with nothing

# This is creating the new Hash
chart = Hash.new();

# Create a Hash Value for all the keys
key_array.each { |key| chart[key] = 0; }

# Add a value to the Keyvalue in the Hash Table
number_hits.each do |number|	
	if (key_array.include? number.to_s) 
		chart[number] += 1;
	end
end 

# Print each key value with how many times it occurs;  i.e.  1-2, 2-2, 3-5
key_array.each { |key| puts "#{key}-#{chart[key]}" }