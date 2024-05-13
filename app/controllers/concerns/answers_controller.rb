class AnswersController < ApplicationController
  def answer
    @question = params[:answer]
    @answer = bob(@question)
  end

  private

  def bob(question)
    if question.include?('?')
      'Silly question, get dressed and go to work!'
    elsif question == 'I am going to work'
      'Great!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
