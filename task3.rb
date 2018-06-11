a = ARGV[0].to_i
b = ARGV[1].to_i


def return_nod a
  for i in 2 .. a
    return a / i, i if a % i == 0
  end
end

nod_list_h = {}
[a, b].each do |cur_number|
  nod_list_h[cur_number] ||= []

  last_val  = cur_number
  while last_val != 1 do
    last_val, divider = return_nod last_val
    nod_list_h[cur_number] << divider
  end
end

arr_1, arr_2 = nod_list_h.values
difference_arr = arr_1 - arr_2 | arr_2 - arr_1

count_h = {}
nod_list_h.each_pair do |key, value|
  value.each do |elem|
    count_h[key] ||= {}
    count_h[key][elem] ||= 0
    count_h[key][elem] += 1
  end
end

k1, k2  = count_h.keys
nod_arr = []
count_h[k1].each_pair do |number, counter|
  next if difference_arr.include? number
  if counter > count_h[k2][number]
    nod_arr << number * count_h[k2][number]
  else
    nod_arr << number * counter
  end
end

puts nod_arr.empty? ? 1 : nod_arr.inject(:*)
