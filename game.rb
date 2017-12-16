class Game
  
  $colors = ["R","G","B","Y","W","Bl","O","Br"]
  $colors2 = ["R","G","B","Y","W","Bl","O","Br"]
  $bArr = Array.new(4)
  $guessArr = Array.new(4)
  $truthArr = Array.new(4)
  def makeCode
    prng = Random.new()
    for x in 0..$bArr.length-1
      y = prng.rand(0..$colors.length-1)
      
    
      $bArr[x] = $colors[y]
     
      $colors.delete_at(y)
      
    end
    
  end
  
  def makeGuess
    check = true
    for x in 0..$guessArr.length-1
     
      while check && x < 4
        puts "[R = Red][G = Green][B = Blue][Y = Yello][W = White][Bl = Black][O = Orange][Br = Break]"
        puts "Enter the peg for hole No" + (x+1).to_s+": "
        guess = gets.chomp
     
      check2 = $colors2.include?(guess)
        if check2
          
          $guessArr[x] = guess
          check = false
          break
        else
          puts "Not a valid colour. Try again."
          check = true
        end
      end
      check = true
    end
    check = false
  
    
  end
  
  def compareCodes
  
    isThere = false
    rightPlace = false
    tCount = 0
    rCount = 0
    amount = 0
    $truthArr.clear
    for x in 0..$bArr.length-1
      for y in 0..$guessArr.length-1
        
        if $bArr[x] == $guessArr[y]
         
          if x == y
            rCount += 1
            rightPlace = true
            break
          else
            tCount += 1
            isThere = true
            
          end
        end
       
      end
        if rCount == 1 
          $truthArr.push(2)
        elsif tCount > 0
          $truthArr.push(1)
        else
          $truthArr.push(0)
        end
        rCount = 0
        tCount = 0
      
    end
   
    $truthArr.sort!
    $truthArr.reverse!
    $truthArr.each do |i|
      amount += i
    end
      
      print $guessArr
      print $truthArr
      puts 
    if amount == 8
      false
    else
      true
    end
  
  end
  
  def displayCode
    print $bArr
  end
 
end