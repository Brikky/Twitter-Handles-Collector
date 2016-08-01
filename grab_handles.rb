##################################################################
##A short program that collects twitter handles from source code##
##################################################################
##To use type "ruby 'output_file_name.txt' url1 url2... urlN"   ##
##  in the command line of a computer that has installed Ruby   ##

#import open-uri so that we can fetch source code from web pages
require 'open-uri'

#skip the first argument (file name) when iterating through files
arg_count = 1

#Create empty array which will be used to hold lines of text
raw_text=[]

##While the number of files read into the array is less than the
#number of URLs passed by the user, continue reading URL source
#codes into the array.
while arg_count < ARGV.length do
raw_text << open(ARGV[arg_count]).read #add file text to raw_text array
arg_count+=1  #iterate to the next file
end

#Join the array values into a string
text = raw_text.join

##scan the text for the character '@' followed by twitter-legal
#characters and store found values in the array 'names'
names = text.scan(/@[0-9a-zA-z_]+/)

#remove duplicate values from 'names' array
names.uniq!

#post number of results to user in cmd line
puts "#{names.length} unique results found."

##open a new file and add each element of the 'names' array to
#a new file, each value is printed on its own line
File.open(ARGV[0],"w+") do |f|
  names.each {|element| f.puts(element)}
end
