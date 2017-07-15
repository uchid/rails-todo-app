class Todo < ApplicationRecord
  belongs_to :project
  default_scope -> {order(:todo_date, :todo_time)}
  validates :content,
    presence: {message: "せめて何すんのかくらい書けよ！"},
    length: {maximum: 255, message: "なげぇよ！！"}    
end
