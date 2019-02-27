test = Proc.new do |nama_d, nama_b|
  "#{nama_d} #{nama_b}"

end

#nama_panjang = test.call('gusty', 'ganteng')
nama_panjang = test['gusty', 'ganteng']
puts nama_panjang
puts nama_panjang.upcase
