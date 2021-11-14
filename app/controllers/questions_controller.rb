class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @user_question = params['question']

    @answer = if @user_question.blank?
                "I can't hear you!"
              elsif @user_question == 'I am going to work'
                'Great!'
              elsif @user_question.end_with?('?')
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
