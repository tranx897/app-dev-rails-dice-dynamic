class DiceController < ApplicationController
  def home    
    render({:template => "/roll_templates/home"})
  end
  
  def roll
    @dice = params["dice"].to_i
    @sides = params["sides"].to_i

    @rolls = []

    @dice.times do
      die = rand(1..@sides)
      @rolls.push(die)
    end

    render({:template => "/roll_templates/result"})
  end
end
