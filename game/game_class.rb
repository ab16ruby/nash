load "../view/depents/colorize.rb"
load "../view/depents/template.rb"
class Nash

  def initialize
  end

  def easy
    ran=rand(0..1)
		if ran==1
			sira=1
      puts "Bilgisayar basliyor".strip
		else
			sira=2
      puts "Oyuncu basliyor".strip
		end

    ran = rand(10...100)
    main_number = ran
    puts "Baslanacak sayi #{main_number}\n".strip
    sleep 2
    loop do
      if sira == 1

        if ran==2 or ran==3
					cev=ran-1
				end

        if ran%3==1
  				cev=rand(1..2)
  			else
  				cev = (ran%3).zero? ? 2 : 1
  			end

        ran-=cev
        sleep 2
    		print "pc nin sırası : #{cev}\n"

      end
    end
  end
end


abc = Nash.new

abc.easy
