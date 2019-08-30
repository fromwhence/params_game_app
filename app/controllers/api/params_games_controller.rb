class Api::ParamsGamesController < ApplicationController
  def my_name
    @name = params[:name]
    render'my_name_view.json.jb'
  end

  # puts "=" * 50
  # p @name[0].upcase == "A"
  # puts "=" * 50

  def check_word
    @name = params[:name]
    
    if @name[0].upcase == "A"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end
    
    render 'starts_with.json.jb'
  end

  def string_guess
    target_number = 42
    @number = params[:number].to_i

    if @number > target_number
      @message = "You guessed too high, try a lower number."
    elsif @number < target_number
      @message = "Your guess was too low."
    else
      @message = "You win!!!"
    end

    render = string_guess_view.json.jb
  end

  def segment_guess
    target_number = 42
    @number = params[:guess].to_i

    if @number > target_number
      @message = "You guessed too high, try a lower number."
    elsif @number < target_number
      @message = "Your guess was too low."
    else
      @message = "You win!!!"
    end

    render 'segment_guess_view.json.jb'
  end

  def body_guess

    # @message = params[:guess]
    # render 'body_guess_view.json.jb'
  end

end
