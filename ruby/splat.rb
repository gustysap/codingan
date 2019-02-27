def list(*tes)
  tes.each do |z|
    puts z
  end
end

#list('gusty', 'ganteng', 'ruby', 'kool', 'keren')

array = ['gusty', 'ganteng', 'ruby']

def print(param, param2, param3)
  puts param
  puts param2
  puts param3
end

print(*array)
