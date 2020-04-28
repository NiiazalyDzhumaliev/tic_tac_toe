class Board
array = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
i = 0
while i < 3
  x = 0
   while x < 3
    print array[i][x]
    print " | "
    x += 1     
   end
   puts
   i += 1
end
end
