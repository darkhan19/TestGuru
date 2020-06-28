class Question < ApplicationRecord
  belongs_to :test
  has_many :answers

  validate :minimum_answers
 
  private

  def minimum_answers
    errors.add :answers, 'Вопрос должен содержать как минимум 1 ответ' if self.answers.count < 1
    erorrs.add :answers, 'Вопрос может содержать максимум 4 ответа' if self.answers.count > 4
  end
end
