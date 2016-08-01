##################################################################
##A short program that collects twitter handles from source code##
##################################################################
##Type "ruby grab_handles.rb 'output_name.txt' file1 file2..."  ##
##  in the command line of a computer that has installed Ruby   ##



#skip the first argument (file name) when iterating through files
arg_count = 1

#Create empty array which will be used to hold lines of text
raw_text=[]

##While the number of files read into the array is less than the
#number of URLs passed by the user, continue reading URL source
#codes into the array.
while arg_count < ARGV.length do
  File.foreach(ARGV[arg_count]) do |line|
    raw_text << line
  end #add file text to raw_text array
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
