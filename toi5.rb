x = 0
5.times do
  y = 0
  5.times do
    print "☆ "
    if y >= x 
      break
    end
    y += 1
  end
  puts ""
  x += 1
end