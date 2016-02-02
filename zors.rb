<<<<<<< HEAD
class Zor
	def initialize a
		@a = a
	end
	def oyunabasla
         ran=rand(0..1)
         if ran==1
		     sira=1
	         @a.yazdir( "PC basliyor\n")
         end
		 if ran==0
			 sira=2
	         @a.yazdir("Oyuncu basliyor\n")
=======
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
		 @a.yazdir( "Kullanici adi : ")
		 isim=gets
         ran=rand(0..1)
         if ran==1 
		     sira=1  
	         @a.yazdir( "PC basliyor\n") 
         end
		 if ran==0 
			 sira=2  
	         @a.yazdir("#{isim.strip} basliyor\n")
>>>>>>> 91016ebbd68a14b4a18b2a3e2ca414c7a00f5088
         end
         ran = rand(1...10)
         @a.yazdir( "Baslanacak sayi #{ran}\n")
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
<<<<<<< HEAD
				     cev=7
=======
				     cev=7		
>>>>>>> 91016ebbd68a14b4a18b2a3e2ca414c7a00f5088
				 elsif ran%11==6
					 cev=6
				 elsif ran%11==7
					 cev=5
			     elsif ran%11==8
<<<<<<< HEAD
					 cev=4
			     elsif ran%11==9
					 cev=3
			     elsif ran%11==10
					 cev=2
=======
					 cev=4		
			     elsif ran%11==9
					 cev=3
			     elsif ran%11==10
					 cev=2      
>>>>>>> 91016ebbd68a14b4a18b2a3e2ca414c7a00f5088
			     end
		       ran+=cev
		       @a.yazdir( "PC nin sırası : #{cev} \n")
		       if ran==100
			     @a.yazdir( "PC kazandı!\n")
			     break
		       end
		 sira=2
<<<<<<< HEAD
	 elsif sira==2
=======
	 elsif sira==2	
>>>>>>> 91016ebbd68a14b4a18b2a3e2ca414c7a00f5088
		 @a.yazdir( "oyuncu siru sirasi : ")
		 loop do
			 cev=gets.to_i
			 if cev>=1 and cev<=10
				 break
			end
			 @a.yazdir( "Hatali secim!\nTekrar sayı giriniz : ")
		 end
		 ran+=cev
		 if ran==100
			 @a.yazdir( "Oyuncu #{isim.strip} kazandı!\n")
			 @a.yazdir(cev)
			 break
		 end
        sira=1
 	   end
 	   	@a.yazdir("Sayının son değeri #{ran}\n")
 	 end
 	 @a.yazdir( "Sayının son değeri #{ran}\n")
<<<<<<< HEAD
   end #def
end # class
=======
   end #def 
end # class 
oyun=Zor.new()
oyun.oyunabasla
		
>>>>>>> 91016ebbd68a14b4a18b2a3e2ca414c7a00f5088
