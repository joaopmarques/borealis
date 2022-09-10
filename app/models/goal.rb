# frozen_string_literal: true

class Goal < ApplicationRecord
  validates :name, presence: true
end
