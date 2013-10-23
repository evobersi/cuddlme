parks_new = File.new("/Users/evobersi/Desktop/my_butt.txt", "r" )
parks_create = File.new("/Users/evobersi/Desktop/my_butt_again.txt", "a+")

park_file = []

park_info.each do |line| 
  park = line.split(",")
  name = park[1]
  borough = park[2]
  q = "Park.create(name: '"
  q += name
  q += "', borough: '"
  q += borough
  q += "')"

  park_file << q
end

# i = 0 
# for parks in park do
#   name = "Name: #{parks[1]}"
#   borough = "Borough: #{parks[2]}"
#   park_file << name 
#   park_file << borough
#   parks_new.puts(park_file)
# end

park_file.each do |park_strang|
  parks_new.puts park_strang
end

park_info.close
parks_new.close

