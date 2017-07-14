class Todo < ApplicationRecord
  belongs_to :project
  validates :content,
    presence: {message: "せめて何すんのかくらい書けよ！"},
    length: {maximum: 255, message: "なげぇよ！！"}    
  validates :todo_date,
    presence: {message: "どうか日にちだけでも教えてください"}
end
