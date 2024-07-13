class DiceController < ApplicationController
  def homepage
    render({ :template => "dice_templates/homepage" })
  end

  def roll
    @num_dice = params[:num_dice].to_i
    @num_sides = params[:num_sides].to_i
  
    @rolls = Array.new(@num_dice) { rand(1..@num_sides) }

    render({ :template => "dice_templates/roll" })
  end
end
