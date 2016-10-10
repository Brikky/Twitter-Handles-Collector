##################################################################
##A short program that collects twitter handles from source code##
##################################################################
##To use type "ruby 'output_file_name.txt' url1 url2... urlN"   ##
##  in the command line of a computer that has installed Ruby   ##

require 'open-uri'
arg_count = 1
raw_text=[]

while arg_count < ARGV.length do
raw_text << open(ARGV[arg_count]).read 
arg_count+=1  
end

text = raw_text.join

names = text.scan(/@[0-9a-zA-z_]+/)

names.uniq!

puts "#{names.length} unique results found."

File.open(ARGV[0],"w+") do |f|
  names.each {|element| f.puts(element)}
end
