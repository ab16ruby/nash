
class Orta
<<<<<<< HEAD
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
=======
	def initialize
	 @ran = nil
	 @b = nil
	 @sira = nil
	 @cev=nil
	 @isim=nil
	end
	def oyunabasla
		@a.yazdir("Kullanici adi : ")
		isim=gets.strip
		ran=rand(0..1)
		if ran==1 
			 sira=1  
			 @a.yazdir("PC basliyor") 
		else
			 sira=2  
			  @a.yazdir("#{isim.strip} basliyor")
>>>>>>> 91016ebbd68a14b4a18b2a3e2ca414c7a00f5088
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
<<<<<<< HEAD
				 elsif ran%4==2
					 cev=1
				 elsif ran%4==3
					cev=2
				 else
=======
				 elsif ran%4==2 
					 cev=1
				 elsif ran%4==3
					cev=2
				 else 
>>>>>>> 91016ebbd68a14b4a18b2a3e2ca414c7a00f5088
				    cev=rand(1..3)
				 end
				ran-=cev
				@a.yazdir("PC nin sırası : #{cev}\n")
				 if ran==1
				 	@a.yazdir("PC kazandı!\n")
				 	break
			     end
<<<<<<< HEAD
			 elsif sira==2
=======
			 elsif sira==2	
>>>>>>> 91016ebbd68a14b4a18b2a3e2ca414c7a00f5088
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
<<<<<<< HEAD
				 @a.yazdir("Sayının son değeri #{ran}\n")
=======
>>>>>>> 91016ebbd68a14b4a18b2a3e2ca414c7a00f5088
 	     end
 	     @a.yazdir("Sayının son değeri #{ran}\n")
     end
end
<<<<<<< HEAD
=======
oyun=Orta.new()
oyun.oyunabasla
>>>>>>> 91016ebbd68a14b4a18b2a3e2ca414c7a00f5088
