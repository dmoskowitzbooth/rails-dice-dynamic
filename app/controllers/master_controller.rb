class MasterController < ApplicationController
  def home
    render({ :template=>"pages_templates/home"}) 
  end
  
  def d2d6
    @num_dice = params.fetch("number_of_dice").to_i

    @sides = params.fetch("how_many_sides").to_i
  
    @rolls = []
  
    @num_dice.times do
      die = rand(1..@sides)
  
      @rolls.push(die)
    end
  
    render({ :template=>"pages_templates/d2d6"}) 
  end
end
