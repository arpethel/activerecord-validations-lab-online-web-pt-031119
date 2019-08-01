class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 250 }
  validates :summary, length: { maximum: 10 }
  validates :category, inclusion: { in: %w(Fiction Non-Fiction),
    message: "%{value} not a valid category. Category must either be Fiction or Non-Fiction."}
  validates :title, exclusion: { in: %w(True Facts),
    message: "%{value} not a valid Title. Title must not be clickbait."}
end
