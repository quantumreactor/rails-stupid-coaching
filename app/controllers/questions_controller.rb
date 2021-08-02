# Documentation comment
class QuestionsController < ApplicationController
  def ask
    @hello = 'Hola coach! Quisiera preguntar algo...'
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    if your_message.downcase == ''
      'No preguntaste, nada!'
    elsif your_message.downcase == 'voy a codear'
      'Fantastico!'
    elsif your_message.end_with?('?')
      'Pfff que pregunta.. anda a codear!'
    else
      'Realmente no importa, anda a codear!'
    end
  end
end
