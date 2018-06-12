# encoding: UTF-8

a = ARGV[0].to_s


b = a.gsub(/[ркнРКН]/, '')

puts b.force_encoding("UTF-8")
