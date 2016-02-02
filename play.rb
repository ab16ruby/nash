# sira==1     pc oynuyor
#sira ==2    oyuncu oynuyor
ran = nil
b = nil
sira = nil
cev=nil
print "Kullanici adi : "
isim=gets
ran=rand(0..1)

<<<<<<< HEAD
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
=======
if ran==1 
	sira=1  
	puts "PC basliyor".strip 
end
if ran==0 
	sira=2  
	puts "#{isim.strip} basliyor".strip
end
ran = rand(10...100)
puts "Baslanacak sayi #{ran}\n".strip
loop  do
	if sira==1
	print "pc nin sırası "
	if ran%3==1
		cev=(1..2)
	else
		if (ran-2)%3==1
			cev=2
		else 
			cev=1
	end
	ran-=cev
	sira=2
	p cev
 	end
	elsif sira==2	
		print "oyuncu sirasi"
		cev=gets.to_i
		ran-=cev
       sira=1
  end
  p ran
 end
>>>>>>> b31632580a169d14ad94675ab69d4de59cdce8e4
