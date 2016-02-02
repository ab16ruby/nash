# sira==1     pc oynuyor
#sira ==2    oyuncu oynuyor
#zorseviye
ran = nil
b = nil
sira = nil
cev=nil
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
ran = rand(1...10)
puts "Baslanacak sayi #{ran}\n".strip
loop  do
	if sira==1
		print "pc nin sırası "
			if ran%11==1
				cev=rand(1..10)
			
			elsif ran%11==0
					cev=10
			elsif ran%4==2
					cev=9
			elsif ran%11==3
					cev=8
			elsif ran%11==4
					cev=7
			elsif ran%11==5
					cev=6		
			elsif ran%11==6
					cev=5
			elsif ran%11==7
					cev=4
			elsif ran%11==8
					cev=3		
			elsif ran%11==9
					cev=2
			elsif ran%11==10
					cev=1
			
			       
			end
		ran+=cev
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
			if cev==1 or cev==2 or cev==3 or cev==4 or cev==5 or cev==6 or cev==7 or cev==8 or cev==9 or cev==10
				break
			end
			puts "Hatali secim!\nTekrar sayı giriniz".strip
		end
		ran+=cev
		if ran==100
			puts "Oyuncu #{isim.strip} kazandı!".strip
			puts cev
			break
		end
       sira=1
  end
  puts ran
 end
