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
				cev=rand(1..2)
			else
				if ran%3==0
					cev=2
				else
					cev=1
				end
			end
		ran-=cev
		if ran<=1
			puts "PC kazandı!\n".strip
			puts cev
			break
		end
		sira=2
		puts cev
	elsif sira==2
		print "oyuncu sirasi"
		loop do
			cev=gets.to_i
			if cev==1 or cev==2
				break
			end
			puts "Hatali secim!\nTekrar sayı giriniz".strip
		end
		ran-=cev
		if ran<=1
			puts "Oyuncu #{isim.strip} kazandı!".strip
			puts cev
			break
		end
       sira=1
  end
  puts ran
 end
