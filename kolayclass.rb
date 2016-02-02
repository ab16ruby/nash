class Kolay
	def initialize a
		@a = a
	end
	def oyunabasla
		sleep 1
		ran=rand(0..1)
		if ran==1
			sira=1
			@a.yazdir("PC basliyor")
		else
			sira=2
			@a.yazdir("Oyuncu basliyor")
		end
		ran = rand(10...100)
		@a.yazdir3("Baslanacak sayi #{ran}\n")
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
		@a.yazdir2("pc nin sırası : #{cev} Çıkardı\n")
		if ran<=1
			@a.yazdir("PC kazandı!\n")
			break
		end
		sira=2
		#puts cev
	elsif sira==2
		@a.yazdir2("oyuncu sirasi :")
		loop do
			cev=gets.to_i
			if cev==1 or cev==2
				break
			end
			@a.yazdir("Hatali secim! Tekrar sayı giriniz\n")
		end
		ran-=cev
		if ran<=1
			@a.yazdir("Oyuncu #{isim.strip} kazandı!\n")
			@a.yazdir(cev)
			break
		end
        sira=1
  		end
			@a.yazdir2("Sayının son değeri #{ran}\n")
 		end
		@a.yazdir2("Sayının son değeri #{ran}\n")
 	end
end
