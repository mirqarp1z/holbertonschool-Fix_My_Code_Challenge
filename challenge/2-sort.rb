#!/usr/bin/env ruby
###
#
# 2. Sort
#
###

result = []

ARGV.each do |arg|
  # skip if not an integer
  next unless arg =~ /^-?\d+$/

  i_arg = arg.to_i
  is_inserted = false

  result.each_with_index do |val, i|
    if i_arg < val
      result.insert(i, i_arg)   # müsbət indekslə insert
      is_inserted = true
      break
    end
  end

  # əgər insert olunmayıbsa, array-in sonuna əlavə et
  result << i_arg unless is_inserted
end

puts result
