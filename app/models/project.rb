class Project < ApplicationRecord
  has_many :paticipating_states, dependent: :destroy
  has_many :users, through: :paticipating_states
  has_many :todos, dependent: :destroy
  validates :name,
    presence: true,
    length: {maximum: 255}
end
