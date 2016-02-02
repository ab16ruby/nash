
a = nil
b = nil

print "Kim Başlayacak (1 PC), (2 USER):"
	secim=gets.strip
	if secim==1 or secim==2
		case secim
            when 1
     	       print "PC oyuna başlar"
            then 
            when 2
     	       print "USER oyuna başlar"
        end
    end


  loop do
    puts "sayiyi giriniz:"
    a = gets.strip.to_i
    break if (a>11) and (a<100)
  end
end 


p a
