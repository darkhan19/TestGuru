class User < ApplicationRecord
  def user_tests(level)
    Test.joins('JOIN results ON tests.id = results.test_id')
      .where('results.user_id = ? and tests.level = ?', self.id, level)
  end
end
