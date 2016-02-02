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
		isim=gets
		ran=rand(0..1)
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
			if ran%4==1
				cev=rand(1..3)
			
			elsif ran%4==0
					cev=3
			elsif ran%4==2
					cev=2
			else
			        cev=1		
			
			end
		ran-=cev
		if ran==1
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
			if cev==1 or cev==2 or cev==3
				break
			end
			puts "Hatali secim!\nTekrar sayı giriniz".strip
		end
		ran-=cev
		if ran==1
			puts "Oyuncu #{isim.strip} kazandı!".strip
			puts cev
			break
		end
       sira=1
  end
  puts ran
 end
