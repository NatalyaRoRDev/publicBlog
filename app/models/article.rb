class Article < ApplicationRecord
  validates :title, presence: true
  validates :text, presence: true
  validates :author, presence: true
end
