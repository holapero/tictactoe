board = ["-","-","-","-","-","-","-","-"]


players = [[],[]]
 
j = 0 
i = 0 
turns = 1 

while i <= 9 
if i.even?
    shape = "x"
else
    shape = "o"
end



choice = gets.chomp



case choice
  when "top-left" 
    board[0] = shape
    players[j].push(8)
  when "top-middle"
    board[1] = shape
      players[j].push(1)
  when "top-right"
    board[2] = shape
      players[j].push(6)
      when "middle-left" 
    board[3] = shape
      players[j].push(2)
  when "center"
    board[4] = shape
      players[j].push(5)
  when "middle-right"
    board[5] = shape
      players[j].push(7)
      when "bottom-left" 
    board[6] = shape
      players[j].push(4)
  when "bottom-middle"
      players[j].push(9)
    board[7] = shape
  when "bottom-right"
      players[j].push(2)
    board[8] = shape
  else 
    puts "please enter a valid command"
end

if j == 0 
  j = 1
else 
  j = 0
end

print board[0]
print "|"
print board[1]
print "|"
print board[2]
puts ""
print board[3]
print "|"
print board[4]
print "|"
print board[5]
puts ""
print board[6]
print "|"
print board[7]
print "|"
print board[8]
puts "\n" * 5



if turns.odd? and turns >= 5  
    a = players[0][-3] 
    b = players[0][-2] 
    c = players[0][-1] 
    z = (a + b + c)
    if z == 15 
         puts "Player X wins"
    end
end

if turns.even? and turns >= 5  
    a = players[1][-3] 
    b = players[1][-2] 
    c = players[1][-1] 
    z = (a + b + c)
    if z == 15 
        puts puts "Player 0 wins"
    end
end

turns += 1
i +=1




end 
