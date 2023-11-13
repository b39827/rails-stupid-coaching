class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @user_input = params[:question]
    @response = ""
    if @user_input == "I am going to work"
      @response = "Great"
    elsif @user_input.include? "?"
      @response = "Silly question, get dressed and go to work!"
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end
