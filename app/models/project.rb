class Project < ApplicationRecord
  has_many :paticipating_states, dependent: :destroy
  has_many :users, through: :paticipating_states
  has_many :todos, dependent: :destroy
  validates :name,
    presence: {message: "いや、名前はつけろよ！"},
    length: {maximum: 255, message: "255文字以内にしろ！"}
end
