
load "depents/colorize.rb"
load "depents/template.rb"
load "design_class.rb"
load "../kolayclass.rb"
load "../ortas.rb"
load "../zors.rb"
class Game

  def initialize
    @gaming = GameDesign.new
  end

  def main_select
    sec = @gaming.main_menu
    case sec
    when "Q"
      diff_select
    when "E"
      exit_game
    end
  end

  private
  def diff_select
    sec = @gaming.difficulty_select
    case sec
    when "1"
      secs = @gaming.desc_easy("KOLAY OYUN")
      case secs
      when "Q"
        @gaming.play_easy
        @easy = Kolay.new @gaming
        @easy.oyunabasla
      end
    when "2"
      @gaming.play_easy("ORTA OYUN")
      @mid = Orta.new @gaming
      @mid.oyunabasla
    when "3"
      @gaming.play_easy("ZOR OYUN")
      @hard = Zor.new @gaming
      @hard.oyunabasla
    end
  end

  def exit_game

  end


end

abc = Game.new

abc.main_select
