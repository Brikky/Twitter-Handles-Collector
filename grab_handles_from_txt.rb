##################################################################
##A short program that collects twitter handles from source code##
##################################################################
##Type "ruby grab_handles.rb 'output_name.txt' file1 file2..."  ##
##  in the command line of a computer that has installed Ruby   ##
arg_count = 1
raw_text=[]

while arg_count < ARGV.length do
  File.foreach(ARGV[arg_count]) do |line|
    raw_text << line
  end
  arg_count+=1
end

text = raw_text.join
handles = text.scan(/@[0-9a-zA-z_]+/) #scans for '@' followed by alphanumerics
handles.uniq!

puts "#{handles.length} unique results found."
File.open(ARGV[0],"w+") do |f|
  handles.each {|name| f.puts(name)}
end
