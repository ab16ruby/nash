
class Orta
	def initialize a
		@a = a
	end
	def oyunabasla
		ran=rand(0..1)
		if ran==1
			 sira=1
			 @a.yazdir("PC basliyor")
		else
			 sira=2
			  @a.yazdir("Oyuncu basliyor")
		end
		ran = rand(10...100)
		@a.yazdir("Baslanacak sayi #{ran}\n")
		loop  do
			if sira==1
				sira=2
				if ran<=4
					cev=ran-1
				 elsif ran%4==0
					cev=3
				 elsif ran%4==2
					 cev=1
				 elsif ran%4==3
					cev=2
				 else
				    cev=rand(1..3)
				 end
				ran-=cev
				@a.yazdir("PC nin sırası : #{cev}\n")
				 if ran==1
				 	@a.yazdir("PC kazandı!\n")
				 	break
			     end
			 elsif sira==2
				 @a.yazdir("oyuncunun sirasi : ")
				 loop do
					cev=gets.to_i
					if cev >=0 and cev <=3
						break
					end
					@a.yazdir("Hatali secim!\nTekrar sayı giriniz :")
				  end
				  ran-=cev
		          sira=1
		         if ran==1
			     @a.yazdir("Oyuncu #{isim.strip} kazandı!")
			     @a.yazdir(cev)
			     break
		         end
		     end
				 @a.yazdir("Sayının son değeri #{ran}\n")
 	     end
 	     @a.yazdir("Sayının son değeri #{ran}\n")
     end
end
