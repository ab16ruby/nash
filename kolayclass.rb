class Kolay
	def initialize
		@ran = nil
		@b = nil
		@sira = nil
		@cev=nil
		@isim=nil
	end
	def oyunabasla 
		puts "Isminizi girin : "
		isim=gets
		ran=rand(0..1)
		if ran==1 
			sira=1  
			puts "PC basliyor".strip 
		else
			sira=2  
			puts "#{isim.strip} basliyor".strip
		end
		ran = rand(10...100)
		puts "Baslanacak sayi #{ran}\n".strip
		loop  do
			if sira==1
				if ran==2 or ran==3
					cev=ran-1
				end
			if ran%3==1
				cev=rand(1..2)
			else
				cev = (ran%3).zero? ? 2 : 1
			end
		ran-=cev
		print "pc nin sırası : #{cev}\n"
		if ran<=1
			puts "PC kazandı!\n ".strip
			break
		end
		sira=2
		#puts cev
	elsif sira==2	
		print "oyuncu sirasi : "
		loop do
			cev=gets.to_i
			if cev==1 or cev==2
				break
			end
			puts "Hatali secim!\nTekrar sayı giriniz\n".strip
		end
		ran-=cev
		if ran<=1
			puts "Oyuncu #{isim.strip} kazandı!\n".strip
			puts cev
			break
		end
        sira=1
  		end
 		puts "Sayının son değeri #{ran}\n"
 		end
 		puts "Sayının son değeri #{ran}\n"
 	end
end
oyun=Kolay.new()
oyun.oyunabasla