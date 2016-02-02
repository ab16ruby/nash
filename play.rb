load "view/depents/colorize.rb"
load "view/depents/template.rb"
load "view/design_class.rb"
class Game

  def initialize
    @gaming = GameDesign.new
  end

  def main_select
    sec = @gaming.main_menu

    case sec
    when "Q"
      @gaming.difficulty_select
    end
  end
end

abc = Game.new

abc.main_select
