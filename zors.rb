# sira==1     pc oynuyor
#sira ==2    oyuncu oynuyor
#zorseviye
class Zor
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
	         puts "PC basliyor\n".strip 
         end
		 if ran==0 
			 sira=2  
	         puts "#{isim.strip} basliyor\n".strip
         end
         ran = rand(1...10)
         puts "Baslanacak sayi #{ran}\n".strip
         loop  do
			if sira==1
				if ran>=90
					cev=100-ran
				 elsif ran%11==1
				 	 cev=rand(1..10)
				 elsif ran%11==0
			     	 cev=1
				 elsif ran%11==2
					 cev=10
				 elsif ran%11==3
					 cev=9
				 elsif ran%11==4
					 cev=8
				 elsif ran%11==5
				     cev=7		
				 elsif ran%11==6
					 cev=6
				 elsif ran%11==7
					 cev=5
			     elsif ran%11==8
					 cev=4		
			     elsif ran%11==9
					 cev=3
			     elsif ran%11==10
					 cev=2      
			     end
		       ran+=cev
		       print "PC nin sırası : #{cev} \n"
		       if ran==100
			     puts "PC kazandı!\n".strip
			     puts cev
			     break
		       end
		 sira=2
	 elsif sira==2	
		 print "oyuncu sirasi : "
		 loop do
			 cev=gets.to_i
			 if cev>=1 and cev<=10
				 break
			end
			 puts "Hatali secim!\nTekrar sayı giriniz : ".strip
		 end
		 ran+=cev
		 if ran==100
			 puts "Oyuncu #{isim.strip} kazandı!\n".strip
			 puts cev
			 break
		 end
        sira=1
 	   end
 	   	puts "Sayının son değeri #{ran}\n"
 	 end
 	 puts "Sayının son değeri #{ran}\n"
   end #def 
end # class 
oyun=Zor.new()
oyun.oyunabasla