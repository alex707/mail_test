a = ARGV[0].to_s
b = ARGV[1].to_s


ind = -1
for i in 0 ... a.length
  if a == (b[i..-1].concat b[0...i])
    ind = a.length/2 < i ? a.length - i : i
    break
  end
end

puts ind
