class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User'  
  has_many :questions
  has_many :tests_users
  has_many :users, through: :tests_users

  validates :title, uniqueness: { scope: :level }, presence: true 
  validates :level, numericality: { :greater_than_or_equal_to => 0, only_integer: true }

  scope :easy, -> { where(level: 0..1) }
  scope :medium, -> { where(level: 2..4) }
  scope :hard, -> { where(level: 5..Float::INFINITY) }

  scope :get_categories, -> (name) { joins(:category).where(categories: {title: name}) }

  # def self.with_category(category_name)
  #   Test.joins('JOIN categories ON categories.id = tests.category_id')
  #       .where('categories.title = ?', category_name).order(title: :desc).pluck(:title)
  # end
end
