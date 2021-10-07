class Article < ApplicationRecord

  validates :name, presence: true, uniqueness: true
  validates :body, presence: true, length: { minimum: 5 }

  has_many :comments

  # before_validation :set_body

  def set_body
    self.body = "This is the valid Article body"
  end

  def print_body
    puts self.body
  end
end
