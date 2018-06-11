# encoding: UTF-8

a = ARGV[0].to_s


b = a.encode("UTF-8")
b = b.gsub(/[ркнРКН]/, '')

puts b