# sira==1     pc oynuyor
#sira ==2    oyuncu oynuyor
#ortaseviye
class Orta
	def initialize
	 @ran = nil
	 @b = nil
	 @sira = nil
	 @cev=nil
	 @isim=nil
	end
	def oyunabasla
		print "Kullanici adi : "
		isim=gets.strip
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
				print "PC nin sırası : #{cev}\n"
				 if ran==1
				 	puts "PC kazandı!\n".strip
				 	break
			     end
			 elsif sira==2	
				 print "oyuncunun sirasi : "
				 loop do
					cev=gets.to_i
					if cev >=0 and cev <=3
						break
					end
					puts "Hatali secim!\nTekrar sayı giriniz :".strip
				  end
				  ran-=cev
		          sira=1
		         if ran==1
			     puts "Oyuncu #{isim.strip} kazandı!".strip
			     puts cev
			     break
		         end
		     end
 	     end
 	     puts "Sayının son değeri #{ran}\n"
     end
end
oyun=Orta.new()
oyun.oyunabasla