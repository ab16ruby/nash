require "./colorize.rb"

class GameTemplate

  def window(**window_option)

      @window_width   = (window_option.include? :width) ? window_option[:width] : "150"
      @window_height  = (window_option.include? :height) ? window_option[:height] : "30"
      @window_padding = (window_option.include? :padding) ? window_option[:padding] : "15"

      @main_container = (@window_width.to_i)-(@window_padding.to_i*2)

      puts size_script = "\e[8;#{@window_height};#{@window_width}t" + `clear`

  end

  def header(**values)

      if(values.include? :sym)
        (1..@window_padding.to_i).each do print " " end
        (1..@main_container).each do print "#{values[:color]}#{values[:font]}#{values[:sym]}\033[0m" end
        print "\n"
      end

      if(values.include? :title)
        centered = ((@main_container-values[:title].size)/2)+@window_padding.to_i
        (1..centered).each do print " " end
        puts "#{values[:color]}#{values[:font]}#{values[:title]}\033[0m"
      end

  end

  def content(**values)
    @content_padding = @window_padding.to_i + values[:padding].to_i
    seperated = values[:title].chars.each_slice(@main_container - values[:padding].to_i*2).map(&:join)

    seperated.each do |x|
      (1..@content_padding.to_i).each do print " " end
      puts x.strip
    end
  end

  def menu(**values)
    size = 0;
    values.each do |x|
      size += x[1].size
    end
    centered = (@main_container - @window_padding.to_i - size+5)/2
    (1..centered).each do print " " end
    values.each do |x|
      (1..5).each do print "\033[48;5;1m\ " end
      print "\033[48;5;1m\ #{x[1]}"
    end
  end

end

abc = GameTemplate.new

abc.window(width: "150", height: "30", padding: "15")

abc.header(sym: "#", color:Colorize::YELLOW, font:Colorize::BOLD)
abc.header(sym: " ")
abc.header(title: "<<NASH - ALPHA>>", color:Colorize::RED, font:Colorize::BOLD)
abc.header(sym: " ")
abc.header(title: "..Hoşgeldiniz..", color:Colorize::WHITE, font:Colorize::BOLD)
abc.header(sym: "_")
abc.header(sym: " ")

abc.header(title:"NASIL OYNANIR:", font:Colorize::BOLD)
abc.header(sym: " ")
abc.content(title:"-Bir Sayı Girişi Yaparak veya Bilgisayarın Sayı Seçmesini Tercih Ederek Oyuna Başlayabilirsiniz.", padding:"5")
abc.header(sym: " ")
abc.content(title:"-Sayıyı Seçmeyen Oyuncu, Belirlenen Sayıdan 1 veya 2 Çıkartarak Oyuna Başlar.", padding:"5")
abc.header(sym: " ")
abc.content(title:"-Ve Sırayla Sayıdan 1 veya 2 Çıkartılarak Oyuna Devam Edilir...", padding:"5")
abc.header(sym: " ")
abc.content(title:"-'1' Diyen Oyuncu Oyunu Kazanır!", padding:"5")
abc.header(sym: " ")
abc.header(sym: "_")
abc.header(sym: " ")
abc.menu(menu1:"OYNA-(Q)", menu2:"AYARLAR-(W)", menu3:"ÇIKIŞ-(E)")
abc.header(sym: " ")
abc.header(sym: "#", color:Colorize::YELLOW, font:Colorize::BOLD)
