
class GameDesign

  def initialize
    @game = GameTemplate.new
    @game.window(width: "150", height: "30", padding: "15")
  end

  def main_menu
    puts `clear`
    @game.header(sym: "#", color:Colorize::YELLOW, font:Colorize::BOLD)
    @game.header(sym: " ")
    @game.header(title: "<<NASH - ALPHA>>", color:Colorize::RED, font:Colorize::BOLD)
    @game.header(sym: " ")
    @game.header(title: "..Hoşgeldiniz..", color:Colorize::WHITE, font:Colorize::BOLD)
    @game.header(sym: "_")
    @game.header(sym: " ")
    @game.menu(menu:"OYNA-(Q)")
    @game.header(sym: " ")
    @game.menu(menu:"ÇIKIŞ-(E)")
    @game.header(sym: "_")
    @game.header(sym: " ")
    @game.header(sym: "#", color:Colorize::YELLOW, font:Colorize::BOLD)
    @game.header(sym: " ")
    gets.strip.upcase
  end
  def difficulty_select
    puts `clear`
    @game.header(sym: "#", color:Colorize::YELLOW, font:Colorize::BOLD)
    @game.header(sym: " ")
    @game.header(title: "**ZORLUK SEÇİMİ**", color:Colorize::GREEN, font:Colorize::BOLD)
    @game.header(sym: "_")
    @game.header(sym: " ")
    @game.menu(menu:"KOLAY-(1)")
    @game.header(sym: " ")
    @game.menu(menu:"ORTA-(2)")
    @game.header(sym: " ")
    @game.menu(menu:"ZOR-(3)")
    @game.header(sym: " ")
    @game.header(sym: "#", color:Colorize::YELLOW, font:Colorize::BOLD)
    gets.strip.upcase
  end
  def desc_easy
    puts `clear`
    @game.header(sym: "#", color:Colorize::YELLOW, font:Colorize::BOLD)
    @game.header(sym: " ")
    @game.header(title: ">> #{value} <<", color:Colorize::GREEN, font:Colorize::BOLD)
    @game.header(sym: "_")
    @game.header(sym: " ")
    @game.header(title:"NASIL OYNANIR:", color:Colorize::PURPLE, font:Colorize::BOLD)
    @game.header(sym: " ")
    @game.content(title:"-Bir Sayı Girişi Yaparak veya Bilgisayarın Sayı Seçmesini Tercih Ederek Oyuna Başlayabilirsiniz.", padding:"5")
    @game.header(sym: " ")
    @game.content(title:"-Sayıyı Seçmeyen Oyuncu, Belirlenen Sayıdan 1 veya 2 Çıkartarak Oyuna Başlar.", padding:"5")
    @game.header(sym: " ")
    @game.content(title:"-Ve Sırayla Sayıdan 1 veya 2 Çıkartılarak Oyuna Devam Edilir...", padding:"5")
    @game.header(sym: " ")
    @game.content(title:"-'1' Diyen Oyuncu Oyunu Kazanır!", padding:"5")
    @game.header(sym: " ")
    @game.header(sym: "_")
    @game.header(sym: " ")
    @game.header(sym: "#", color:Colorize::YELLOW, font:Colorize::BOLD)
    gets.strip.upcase
  end
  def play_easy(value)
    puts `clear`
    @game.header(sym: "#", color:Colorize::YELLOW, font:Colorize::BOLD)
    @game.header(sym: " ")
    @game.header(title: ">> #{value} <<", color:Colorize::GREEN, font:Colorize::BOLD)
    @game.header(sym: " ")
    @game.header(sym: "#", color:Colorize::YELLOW, font:Colorize::BOLD)
    @game.header(sym: " ")
  end
  def yazdir(value)
    @game.header(title: "#{value}", color:Colorize::WHITE, font:Colorize::BOLD)
  end
  def yazdir2(value)
    @game.header(title: "#{value}", color:Colorize::GREEN, font:Colorize::BOLD)
  end
  def yazdir3(value)
    @game.header(title: "#{value}", color:Colorize::RED, font:Colorize::BOLD)
  end
end
