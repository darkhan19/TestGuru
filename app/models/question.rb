class Question < ApplicationRecord
  belongs_to :test
  has_many :answers

  validate :maximum_answers

  private

  def maximum_answers
    errors.add(:answers, 'Вопрос может содержать максимум 4 ответа') if self.answers.size > 4
  end
end
