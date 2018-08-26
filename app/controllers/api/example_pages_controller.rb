class Api::ExamplePagesController < ApplicationController
  def fortune_action
    f1 = "You will lose everything you own"
    f2 = "You are going to rule the world"
    f3 = "You need to keep hoping for a better life!"
    fortunes = [f1, f2, f3]
    @outcome = fortunes[rand(0..2)]
    render "fortune_view.json.jbuilder"
  end

  def lotto_action
    possible_numbers = (1..60).to_a.shuffle
    picked_numbers = [ ]

   
      picked_numbers << possible_numbers.sample(6)
    
    @final_numbers = "Your lucky numbers for today are: #{picked_numbers.join(", ")}"  

    render 'lotto_view.json.jbuilder'

    end
  
end

