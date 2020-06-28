class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User'  
  has_many :questions
  has_many :tests_users
  has_many :users, through: :tests_users

  def self.with_category(category_name)
    Test.joins('JOIN categories ON categories.id = tests.category_id')
        .where('categories.title = ?', category_name).order(title: :desc).pluck(:title)
  end
end
