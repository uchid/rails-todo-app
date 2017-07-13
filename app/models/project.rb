class Project < ApplicationRecord
  has_many :paticipating_states, dependent: :destroy
  has_many :users, through: :paticipating_states
  accepts_nested_attributes_for :paticipating_states
end
