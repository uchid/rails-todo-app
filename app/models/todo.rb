class Todo < ApplicationRecord
  belongs_to :project
  default_scope -> {order(:todo_date, :todo_time)}
  validates :content,
    presence: true,
    length: {maximum: 255}    
end
